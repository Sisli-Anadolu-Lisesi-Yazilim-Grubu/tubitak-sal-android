#include "TUBITAK4006SAL.h"
#include <QtWidgets/QApplication>

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);

	giris_ekrani *nesne = new giris_ekrani;
	nesne->show();

	return a.exec();
}
