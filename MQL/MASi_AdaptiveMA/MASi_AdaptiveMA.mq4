//+---------------------------------------------------------------------------+
//|                                                       MASi_AdaptiveMA.mq4 |
//|                                         Copyright 2017, Terentyev Aleksey |
//|                                 https://www.mql5.com/ru/users/terentyev23 |
//+---------------------------------------------------------------------------+
#property copyright     "Copyright 2017, Terentyev Aleksey"
#property link          "https://www.mql5.com/ru/users/terentyev23"
#property description   "The indicator averages several MAs in one line."
#property description   "It also allows averaging in accordance with the weighting factors."
#property version       "1.4"
#property strict

//---------------------Defines------------------------------------------------+
enum BoolEnum {
    Disable = 0,
    Enable  = 1
};
enum MeanType {
    Square,
    Arithmetic,
    Geometric,
    Harmonic,
    ArithmeticW,
    GeometricW,
    HarmonicW
};
//---------------------Indicators---------------------------------------------+
#property indicator_chart_window
#property indicator_buffers 1
#property indicator_plots   1
//--- plot
#property indicator_label1  "AdaptiveMA"
#property indicator_type1   DRAW_LINE
#property indicator_color1  clrLimeGreen
#property indicator_style1  STYLE_SOLID
#property indicator_width1  2
//--- indicator buffers
double      MainBuffer[];

//-----------------Global variables-------------------------------------------+
//---
input string                MA_PERIODS  = "14, 30, 180, 360";           // Moving average periods
input BoolEnum              ON_WEIGHTS  = Disable;                      // Use weighting factors
// input MeanType              MA_MEANTYPE = Arithmetic;                   //
input string                MA_WEIGHTS  = "1, 1.618, 2.618, 4.236";     // Weights of moving averages
input ENUM_MA_METHOD        MA_METHOD   = MODE_EMA;                     // Moving Average Type
input ENUM_APPLIED_PRICE    PRICE       = PRICE_CLOSE;                  // Price type
//---
string                      emaArrayStr[], wghtArrayStr[];
int                         emaCount, emaArray[], wghtCount;
double                      wghtArray[];

//+---------------------------------------------------------------------------+
int OnInit()
{
    SetIndexBuffer( 0, MainBuffer );
    // strings to arrays
    emaCount = StringSplit( MA_PERIODS, ',', emaArrayStr );
    ArrayResize( emaArray, emaCount );
    for( int idx = 0; idx < emaCount; idx++ ) {
        emaArray[idx] = StringToInteger( emaArrayStr[idx] );
    }
    if( ON_WEIGHTS ) {
        wghtCount = StringSplit( MA_WEIGHTS, ',', wghtArrayStr );
        ArrayResize( wghtArray, wghtCount );
        for( int idx = 0; idx < wghtCount; idx++ ) {
            wghtArray[idx] = StringToDouble( wghtArrayStr[idx] );
        }
        if( emaCount != wghtCount ) {
            Print( "Invalid weights count" );
            return INIT_FAILED;
        }
        for( int idx = 0; idx < wghtCount; idx++ ) {
            if( wghtArray[idx] == 0.0 ) {
                Print( "Invalid weights" );
                return INIT_FAILED;
            }
        }
    }
    return INIT_SUCCEEDED;
}

//+---------------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
{
    int limit = rates_total - prev_calculated;
    if( prev_calculated > 0 ) {
        limit++;
    }
    if( ON_WEIGHTS ) {
        for( int idx = limit-1; idx >= 0; idx-- ) {
            MainBuffer[idx] = iAdaptiveMA( idx, Symbol(), Period(), emaArray, wghtArray, MA_METHOD, PRICE, ArithmeticW ); // MA_MEANTYPE
        }
    } else {
        for( int idx = limit-1; idx >= 0; idx-- ) {
            MainBuffer[idx] = iAdaptiveMA( idx, Symbol(), Period(), emaArray, wghtArray, MA_METHOD, PRICE, Arithmetic ); // MA_MEANTYPE  Square Geometric
        }
    }
    return rates_total;
}

//+---------------------------------------------------------------------------+
void OnDeinit(const int reason)
{
}

//+---------------------------------------------------------------------------+
//| Functions                                                                 |
//+---------------------------------------------------------------------------+
double iAdaptiveMA(const int bar, 
                   const string symbol, const int period,
                   const int &maPeriods[], const double &maWeights[], 
                   const ENUM_MA_METHOD method = MODE_EMA, const ENUM_APPLIED_PRICE price = PRICE_CLOSE,
                   const MeanType mType = Square)
{   // Indicator Adaptive MA. ©Aleksey Terentyev
    const  int    size = ArraySize( maPeriods );
    static double tmpArray[];
    ArrayResize( tmpArray, size );
    for( int idx = 0; idx < size; idx++ ) {
        tmpArray[idx] = iMA( symbol, period, maPeriods[idx], 0, method, price, bar );
    }
    if( mType == Square || mType == Arithmetic || mType == Geometric || mType == Harmonic ) {
        return Mean( mType, tmpArray );
    } else if( mType == ArithmeticW || mType == GeometricW || mType == HarmonicW ) {
        return Mean( mType, tmpArray, maWeights );
    }
    return EMPTY_VALUE;
};

template<typename T>
double Mean(const MeanType type, T &array[])
{   // Calculate mean value
    int size = ArraySize(array);
    if( size == 0 ) {
        Print( "Error. Mean(). Array is empty." );
        return EMPTY_VALUE;
    }
    if( size == 1 ) {
        return array[0];
    }
    double sum = 0.0;
    switch( type ) {
        case Square: {
            for( int idx = 0; idx < size; idx++ )
                sum += MathPow( (double)array[idx], 2 );
            return MathSqrt( sum / size );
        }
        case Arithmetic: {
            for( int idx = 0; idx < size; idx++ )
                sum += (double)array[idx];
            return sum / size;
        }
        case Geometric: {
            sum = 1.0;
            for( int idx = 0; idx < size; idx++ )
                sum *= (double)array[idx];
            return MathPow( sum, 1.0 / size );
        }
        case Harmonic: {
            for( int idx = 0; idx < size; idx++ )
                sum += 1.0 / (double)array[idx];
            return size / sum;
        }
        default: return EMPTY_VALUE;
    }
};

template<typename T, typename T2>
double Mean(const MeanType type, T &array[], T2 &arrayW[])
{   // Calculate mean value
    int size = ArraySize(array), sizeW = ArraySize(arrayW);
    if( size == 0 || sizeW == 0 ) {
        Print( "Error. Mean(). Array is empty." );
        return EMPTY_VALUE;
    } else if( size != sizeW ) {
        Print( "Error. Mean(). Arrays are not equal." );
        return EMPTY_VALUE;
    }
    if( size == 1 ) {
        return array[0];
    }
    double sum = 0.0;
    switch( type ) {
        case ArithmeticW: {
            // ArraySort( array );
            double sumW = 0.0;
            for( int idx = 0; idx < size; idx++ ) {
                sum += arrayW[idx] * (double)array[idx];
                sumW += arrayW[idx];
            }
            return sum / sumW;
        }
        case GeometricW: {
            // ArraySort( array );
            double sumW = 0.0;
            for( int idx = 0; idx < size; idx++ ) {
                sum += arrayW[idx] * MathLog( (double)array[idx] );
                sumW += arrayW[idx];
            }
            return MathExp( sum / sumW );
        }
        case HarmonicW: {
            // ArraySort( array );
            double sumW = 0.0;
            for( int idx = 0; idx < size; idx++ ) {
                sum += arrayW[idx] / (double)array[idx];
                sumW += arrayW[idx];
            }
            return sumW / sum;
        }
        default: return EMPTY_VALUE;
    }
};
