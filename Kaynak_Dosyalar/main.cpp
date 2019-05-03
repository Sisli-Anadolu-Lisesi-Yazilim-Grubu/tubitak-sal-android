#include "TUBITAK4006SAL.h"
#include <QtWidgets/QApplication>

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);

    QCoreApplication :: setApplicationName ( "TÜBİTAK 4006 ŞAL" ) ; // uygulama adı
    QCoreApplication :: setOrganizationName ( "Şişli Anadolu Lisesi" ) ; // organizasyon adı

	giris_ekrani *nesne = new giris_ekrani;
	nesne->show();

	return a.exec();
}
