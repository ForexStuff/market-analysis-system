//+---------------------------------------------------------------------------+
//|                                                   MASi_KeltnerChannel.mq4 |
//|                                         Copyright 2017, Terentyev Aleksey |
//|                                 https://www.mql5.com/ru/users/terentyev23 |
//+---------------------------------------------------------------------------+
#property copyright     "Copyright 2017, Terentyev Aleksey"
#property link          "https://www.mql5.com/ru/users/terentyev23"
#property description   "Types of Keltner channel:"
#property description   "Original - A simple moving average from a typical price and trading range."
#property description   "Modified_1 - A exponential moving average from a typical price and average true range."
#property description   "Modified_2 - A exponential moving average from a close price and average true range."
#property description   "The idea of Chester W. Keltner."
#property version       "1.3"
#property strict

#include                <MovingAverages.mqh>

//---------------------Indicators---------------------------------------------+
#property indicator_chart_window
#property indicator_buffers 5
#property indicator_plots   5
//--- plot
#property indicator_label1  "Keltner EMA"
#property indicator_type1   DRAW_LINE
#property indicator_color1  clrGray
#property indicator_style1  STYLE_SOLID
#property indicator_width1  1
#property indicator_label2  "Keltner Higher"
#property indicator_type2   DRAW_LINE
#property indicator_color2  clrMediumBlue
#property indicator_style2  STYLE_SOLID
#property indicator_width2  1
#property indicator_label3  "Keltner Lower"
#property indicator_type3   DRAW_LINE
#property indicator_color3  clrMediumBlue
#property indicator_style3  STYLE_SOLID
#property indicator_width3  1
#property indicator_label4  "Signal Buy"
#property indicator_type4   DRAW_ARROW
#property indicator_color4  clrLime
#property indicator_style4  STYLE_SOLID
#property indicator_width4  1
#property indicator_label5  "Signal Sell"
#property indicator_type5   DRAW_ARROW
#property indicator_color5  clrMagenta
#property indicator_style5  STYLE_SOLID
#property indicator_width5  1
//--- indicator buffers
double      KPIndBuffer[];
double      KHighBuffer[], KLowBuffer[];
double      BuyBuffer[], SellBuffer[];

//-----------------Global variables-------------------------------------------+
enum KeltnerChannelType {
    Original,
    Modified_1,
    Modified_2
};
enum KeltnerLineType {
    PriceIndicator,
    Higher,
    Lower
};
//---
input int                   PERIOD      = 10;           // Period of indicator
input KeltnerChannelType    K_TYPE      = Modified_2;   // Type of Keltner channel
input int                   CHANNEL_PC  = 100;          // Size of channel in percent
input string                STRING      = "======= Signals =======";// ======= Signals =======
input bool                  SGNL_ORIGIN = false;        // Original methodology
input bool                  SGNL_MOD    = false;        // Modified technique using a filter
//input bool                  SGNL_SM_TR  = false;        // The rule of small Keltner trends
//---
//+---------------------------------------------------------------------------+
int OnInit()
{
    SetIndexBuffer( 0, KPIndBuffer );
    SetIndexBuffer( 1, KHighBuffer );
    SetIndexBuffer( 2, KLowBuffer );
    SetIndexBuffer( 3, BuyBuffer );
    SetIndexArrow( 3, 236 );
    SetIndexBuffer( 4, SellBuffer );
    SetIndexArrow( 4, 238 );
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
    for( int idx = limit-1; idx >= 0; idx-- ) {
        KPIndBuffer[idx] = KeltnerChannel( idx, Symbol(), Period(), PERIOD, PriceIndicator, K_TYPE );
        KHighBuffer[idx] = KeltnerChannel( idx, Symbol(), Period(), PERIOD, Higher, K_TYPE, CHANNEL_PC );
        KLowBuffer[idx]  = KeltnerChannel( idx, Symbol(), Period(), PERIOD, Lower, K_TYPE, CHANNEL_PC );
        Signals( idx );
    }
    return rates_total;
}

//+---------------------------------------------------------------------------+
double KeltnerChannel(const int bar,
                      const string symbol = NULL, const int period = PERIOD_CURRENT,
                      const int pEMA = 10,
                      const KeltnerLineType line = PriceIndicator,
                      const KeltnerChannelType type = Modified_2,
                      const int ch_percent = 100)
{   // Change mode
    ENUM_MA_METHOD emaType = MODE_EMA;
    ENUM_APPLIED_PRICE priceType = PRICE_TYPICAL;
    if( type == Modified_2 ) {
        priceType = PRICE_CLOSE;
    } else if( type == Original ) {
        emaType = MODE_SMA;
    }
    // Main level
    double priceInd = iMA( symbol, period, pEMA, 0, emaType, priceType, bar );
    if( line == PriceIndicator ) {
        return priceInd;
    }
    // Calculate channel
    double tradingRange = 0.0;
    if( type == Modified_1 || type == Modified_2 ) {
        tradingRange = iATR( symbol, period, pEMA, bar );
    } else if( type == Original ) {
        double trRangeArray[];
        ArrayResize( trRangeArray, pEMA );
        for( int idx = 0; idx < pEMA; idx++ )
            trRangeArray[idx] = iHigh( symbol, period, bar+(pEMA-idx-1) ) - iLow( symbol, period, bar+(pEMA-idx-1) );
        tradingRange = SimpleMA( pEMA-1, pEMA, trRangeArray );
    } 
    if( line == Higher )
        return priceInd + tradingRange * ch_percent * 0.01;
    if( line == Lower )
        return priceInd - tradingRange * ch_percent * 0.01;
    return EMPTY_VALUE;
}

void Signals(const int bar)
{
    if( SGNL_ORIGIN ) {
        if( K_TYPE == Original ) {
            if( iHigh(Symbol(), Period(), bar) > KeltnerChannel(bar, Symbol(), Period(), PERIOD, Higher, K_TYPE, 100) ) {
                BuyBuffer[bar] = iClose( Symbol(), Period(), bar );
            }
            if( iLow(Symbol(), Period(), bar) < KeltnerChannel(bar, Symbol(), Period(), PERIOD, Lower, K_TYPE, 100) ) {
                SellBuffer[bar] = iClose( Symbol(), Period(), bar );
            }
        } else {
            if( iClose(Symbol(), Period(), bar) > KeltnerChannel(bar, Symbol(), Period(), PERIOD, Higher, K_TYPE, 100) ) {
                BuyBuffer[bar] = iClose( Symbol(), Period(), bar );
            }
            if( iClose(Symbol(), Period(), bar) < KeltnerChannel(bar, Symbol(), Period(), PERIOD, Lower, K_TYPE, 100) ) {
                SellBuffer[bar] = iClose( Symbol(), Period(), bar );
            }
        }
    }
    if( SGNL_MOD ) {
        if( ( iClose(Symbol(), Period(), bar) <
              ( iMA(Symbol(), Period(), 4, 0, MODE_EMA, PRICE_CLOSE, bar+1) -
                iATR(Symbol(), Period(), PERIOD, bar+1)*0.77 ) ) &&
            ( iClose(Symbol(), Period(), bar) >
              iMA(Symbol(), Period(), 274, 0, MODE_EMA, PRICE_CLOSE, bar) ) ) {
            BuyBuffer[bar] = iClose( Symbol(), Period(), bar );
        }
        if( ( iClose(Symbol(), Period(), bar) >
              ( iMA(Symbol(), Period(), 4, 0, MODE_EMA, PRICE_CLOSE, bar+1) +
                iATR(Symbol(), Period(), PERIOD, bar+1)*0.77 ) ) &&
            ( iClose(Symbol(), Period(), bar) <
              iMA(Symbol(), Period(), 274, 0, MODE_EMA, PRICE_CLOSE, bar) ) ) {
            SellBuffer[bar] = iClose( Symbol(), Period(), bar );
        }
    }
    //if( SGNL_SM_TR ) {
    //}
}

