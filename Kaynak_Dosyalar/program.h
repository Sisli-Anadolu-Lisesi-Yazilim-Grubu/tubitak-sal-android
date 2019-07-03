#ifndef PROGRAM_H
#define PROGRAM_H

#include <QObject>
#include <QQmlEngine>
#include <QQmlContext>
#include "namespace.h"
#include "veriler/veriler1.h"
#include "veriler/veriler2.h"
#include "veriler/veriler3.h"
#include "veriler/veriler4.h"
#include "veriler/veriler5.h"
#include "veriler/veriler6.h"
#include "veriler/veriler7.h"
#include "veriler/veriler8.h"
#include "veriler/veriler9.h"
#include "veriler/veriler10.h"
#include "veriler/veriler11.h"
#include "veriler/veriler12.h"
#include "veriler/veriler13.h"
#include "veriler/veriler14.h"
#include "veriler/veriler15.h"
#include "veriler/veriler16.h"
#include "veriler/veriler17.h"
#include "veriler/veriler18.h"
#include "veriler/veriler19.h"
#include "veriler/veriler20.h"
#include "veriler/veriler21.h"
#include "veriler/veriler22.h"
#include "veriler/veriler23.h"
#include "veriler/veriler24.h"

class Program : public QObject
{
    Q_OBJECT
public:
    explicit Program(QObject *parent = nullptr);

    int i;
    Q_INVOKABLE void degerAta(int x);
    Q_INVOKABLE QString dondurBaslik();
    Q_INVOKABLE QString dondurMetin();
    Q_INVOKABLE QString dondurYapan();

    TUBITAK::proje1 *nesne1;
    TUBITAK::proje2 *nesne2;
    TUBITAK::proje3 *nesne3;
    TUBITAK::proje4 *nesne4;
    TUBITAK::proje5 *nesne5;
    TUBITAK::proje6 *nesne6;
    TUBITAK::proje7 *nesne7;
    TUBITAK::proje8 *nesne8;
    TUBITAK::proje9 *nesne9;
    TUBITAK::proje10 *nesne10;
    TUBITAK::proje11 *nesne11;
    TUBITAK::proje12 *nesne12;
    TUBITAK::proje13 *nesne13;
    TUBITAK::proje14 *nesne14;
    TUBITAK::proje15 *nesne15;
    TUBITAK::proje16 *nesne16;
    TUBITAK::proje17 *nesne17;
    TUBITAK::proje18 *nesne18;
    TUBITAK::proje19 *nesne19;
    TUBITAK::proje20 *nesne20;
    TUBITAK::proje21 *nesne21;
    TUBITAK::proje22 *nesne22;
    TUBITAK::proje23 *nesne23;
    TUBITAK::proje24 *nesne24;
};

#endif // PROGRAM_H
