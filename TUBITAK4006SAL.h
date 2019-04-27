#pragma once

#include <QtWidgets/QMainWindow>
#include "ui_girisEkrani.h"
#include "ui_projeEkran1.h"
#include "ui_okul.h"
#include <QTimer>
#include "Kaynak_Dosyalar/namespace.h"
#include "Kaynak_Dosyalar/veriler/veriler1.h"

using namespace TUBITAK;

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
private slots:
	void ekran_degistir();
    void on_bar_proje1_triggered();
private:
    proje1 *nesne1;
};

class okul : public QMainWindow, public Ui::okul
{
	Q_OBJECT
public:
	okul();
private slots:
	void ekran_degistir();
};
