#pragma once

#include <QtWidgets/QMainWindow>
#include "ui_girisEkrani.h"
#include "ui_projeEkran1.h"
#include "ui_okul.h"
#include <QTimer>

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
};

class okul : public QMainWindow, public Ui::okul
{
	Q_OBJECT
public:
	okul();
private slots:
	void ekran_degistir();
};
