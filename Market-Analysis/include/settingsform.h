#ifndef SETTINGSFORM_H
#define SETTINGSFORM_H

#include <QDialog>
#include "include/configmas.h"

namespace Ui {
class SettingsForm;
}

class SettingsForm : public QDialog
{
    Q_OBJECT
public:
    explicit SettingsForm(QWidget *parent = 0);
    ~SettingsForm();
    void setSettingsPtr(Settings *settings);

private:
    Ui::SettingsForm *ui;
    Settings *settings;
};

#endif // SETTINGSFORM_H
