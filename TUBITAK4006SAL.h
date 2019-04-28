#pragma once

#include <QtWidgets/QMainWindow>
#include "ui_girisEkrani.h"
#include "ui_projeEkran1.h"
#include "ui_okul.h"
#include "ui_picture-screen.h"
#include <QTimer>
#include "Kaynak_Dosyalar/namespace.h"
#include "Kaynak_Dosyalar/veriler/veriler1.h"
#include "Kaynak_Dosyalar/veriler/veriler2.h"
#include "Kaynak_Dosyalar/veriler/veriler3.h"
#include "Kaynak_Dosyalar/veriler/veriler4.h"
#include "Kaynak_Dosyalar/veriler/veriler5.h"
#include "Kaynak_Dosyalar/veriler/veriler6.h"
#include "Kaynak_Dosyalar/veriler/veriler7.h"
#include "Kaynak_Dosyalar/veriler/veriler8.h"
#include "Kaynak_Dosyalar/veriler/veriler9.h"
#include "Kaynak_Dosyalar/veriler/veriler10.h"
#include "Kaynak_Dosyalar/veriler/veriler11.h"
#include "Kaynak_Dosyalar/veriler/veriler12.h"
#include "Kaynak_Dosyalar/veriler/veriler13.h"
#include "Kaynak_Dosyalar/veriler/veriler14.h"
#include "Kaynak_Dosyalar/veriler/veriler15.h"
#include "Kaynak_Dosyalar/veriler/veriler16.h"
#include "Kaynak_Dosyalar/veriler/veriler17.h"
#include "Kaynak_Dosyalar/veriler/veriler18.h"
#include "Kaynak_Dosyalar/veriler/veriler19.h"
#include "Kaynak_Dosyalar/veriler/veriler20.h"
#include "Kaynak_Dosyalar/veriler/veriler21.h"
#include "Kaynak_Dosyalar/veriler/veriler22.h"
#include "Kaynak_Dosyalar/veriler/veriler23.h"
#include "Kaynak_Dosyalar/veriler/veriler24.h"

using namespace TUBITAK;

static int projeNo;
static QString projeAd;
static QString projeYol;

class giris_ekrani : public QMainWindow, Ui::girisEkran
{
	Q_OBJECT
public:
	giris_ekrani();
private slots:
	void ekran_degistir();
};

class proje_ekrani : public QMainWindow, public Ui::projeEkran1
{
	Q_OBJECT
public:
    proje_ekrani();
    void getProject();

private slots:
	void ekran_degistir();
    void on_bar_proje1_triggered();
    void on_bar_proje8_triggered();
    void on_bar_proje2_triggered();
    void on_bar_proje3_triggered();
    void on_bar_proje4_triggered();
    void on_bar_proje9_triggered();
    void on_bar_proje5_triggered();
    void on_bar_proje7_triggered();
    void on_bar_proje10_triggered();
    void on_bar_proje13_triggered();
    void on_bar_proje6_triggered();
    void on_bar_proje11_triggered();
    void on_bar_proje12_triggered();
    void on_bar_proje15_triggered();
    void on_bar_proje14_triggered();
    void on_bar_proje16_triggered();
    void on_bar_proje17_triggered();
    void on_bar_proje18_triggered();
    void on_bar_proje19_triggered();
    void on_bar_proje22_triggered();
    void on_bar_proje20_triggered();
    void on_bar_proje21_triggered();
    void on_bar_proje23_triggered();
    void on_bar_proje24_triggered();
    void on_cikis_triggered();
    void on_buyut_triggered();

private:
    proje1 *nesne1;
    proje2 *nesne2;
    proje3 *nesne3;
    proje4 *nesne4;
    proje5 *nesne5;
    proje6 *nesne6;
    proje7 *nesne7;
    proje8 *nesne8;
    proje9 *nesne9;
    proje10 *nesne10;
    proje11 *nesne11;
    proje12 *nesne12;
    proje13 *nesne13;
    proje14 *nesne14;
    proje15 *nesne15;
    proje16 *nesne16;
    proje17 *nesne17;
    proje18 *nesne18;
    proje19 *nesne19;
    proje20 *nesne20;
    proje21 *nesne21;
    proje22 *nesne22;
    proje23 *nesne23;
    proje24 *nesne24;
};

class okul : public QMainWindow, public Ui::okul
{
    Q_OBJECT
public:
	okul();
private slots:
	void ekran_degistir();
};

class resim_ekrani : public QMainWindow, public Ui::pic_screen
{
    Q_OBJECT
public:
    resim_ekrani();
private slots:
    void on_back_triggered();
};
