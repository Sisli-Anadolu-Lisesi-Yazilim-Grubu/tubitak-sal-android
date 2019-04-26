#include "TUBITAK4006SAL.h"

giris_ekrani::giris_ekrani() {
	setupUi(this);
	versionBar->showMessage("v1.0");

	QTimer *timer = new QTimer;
	timer->setSingleShot(true);
	connect(timer, SIGNAL(timeout()), this, SLOT(ekran_degistir()));
	timer->start(6500);
}

proje_ekrani::proje_ekrani() {
	setupUi(this);
	connect(okulButton1, SIGNAL(clicked()), this, SLOT(ekran_degistir()));
}

okul::okul() {
	setupUi(this);
	connect(projeButton, SIGNAL(clicked()), this, SLOT(ekran_degistir()));
}

void giris_ekrani::ekran_degistir() {
	proje_ekrani *nesne2 = new proje_ekrani;
	nesne2->show();
	delete this;
}

void proje_ekrani::ekran_degistir() {
	okul *nesne = new okul;
	nesne->show();
	delete this;
}

void okul::ekran_degistir() {
	proje_ekrani *nesne = new proje_ekrani;
	nesne->show();
	delete this;
}