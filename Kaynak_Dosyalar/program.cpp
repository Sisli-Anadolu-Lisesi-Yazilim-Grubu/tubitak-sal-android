#include "program.h"

Program::Program(QObject *parent) : QObject(parent)
{
    nesne1 = new TUBITAK::proje1;
    nesne2 = new TUBITAK::proje2;
    nesne3 = new TUBITAK::proje3;
    nesne4 = new TUBITAK::proje4;
    nesne5 = new TUBITAK::proje5;
    nesne6 = new TUBITAK::proje6;
    nesne7 = new TUBITAK::proje7;
    nesne8 = new TUBITAK::proje8;
    nesne9 = new TUBITAK::proje9;
    nesne10 = new TUBITAK::proje10;
    nesne11 = new TUBITAK::proje11;
    nesne12 = new TUBITAK::proje12;
    nesne13 = new TUBITAK::proje13;
    nesne14 = new TUBITAK::proje14;
    nesne15 = new TUBITAK::proje15;
    nesne16 = new TUBITAK::proje16;
    nesne17 = new TUBITAK::proje17;
    nesne18 = new TUBITAK::proje18;
    nesne19 = new TUBITAK::proje19;
    nesne20 = new TUBITAK::proje20;
    nesne21 = new TUBITAK::proje21;
    nesne22 = new TUBITAK::proje22;
    nesne23 = new TUBITAK::proje23;
    nesne24 = new TUBITAK::proje24;
}

Q_INVOKABLE void Program::degerAta(int value)
{
    i = value;
}

Q_INVOKABLE QString Program::dondurBaslik()
{
    switch (i)
    {
        case 1: return nesne1->baslik1;
        case 2: return nesne2->baslik2;
        case 3: return nesne3->baslik3;
        case 4: return nesne4->baslik4;
        case 5: return nesne5->baslik5;
        case 6: return nesne6->baslik6;
        case 7: return nesne7->baslik7;
        case 8: return nesne8->baslik8;
        case 9: return nesne9->baslik9;
        case 10: return nesne10->baslik10;
        case 11: return nesne11->baslik11;
        case 12: return nesne12->baslik12;
        case 13: return nesne13->baslik13;
        case 14: return nesne14->baslik14;
        case 15: return nesne15->baslik15;
        case 16: return nesne16->baslik16;
        case 17: return nesne17->baslik17;
        case 18: return nesne18->baslik18;
        case 19: return nesne19->baslik19;
        case 20: return nesne20->baslik20;
        case 21: return nesne21->baslik21;
        case 22: return nesne22->baslik22;
        case 23: return nesne23->baslik23;
        case 24: return nesne24->baslik24;
    }
}

Q_INVOKABLE QString Program::dondurMetin()
{
    switch (i)
    {
        case 1: return nesne1->metin1;
        case 2: return nesne2->metin2;
        case 3: return nesne3->metin3;
        case 4: return nesne4->metin4;
        case 5: return nesne5->metin5;
        case 6: return nesne6->metin6;
        case 7: return nesne7->metin7;
        case 8: return nesne8->metin8;
        case 9: return nesne9->metin9;
        case 10: return nesne10->metin10;
        case 11: return nesne11->metin11;
        case 12: return nesne12->metin12;
        case 13: return nesne13->metin13;
        case 14: return nesne14->metin14;
        case 15: return nesne15->metin15;
        case 16: return nesne16->metin16;
        case 17: return nesne17->metin17;
        case 18: return nesne18->metin18;
        case 19: return nesne19->metin19;
        case 20: return nesne20->metin20;
        case 21: return nesne21->metin21;
        case 22: return nesne22->metin22;
        case 23: return nesne23->metin23;
        case 24: return nesne24->metin24;
    }
}

Q_INVOKABLE QString Program::dondurYapan()
{
    switch (i)
    {
        case 1: return nesne1->yapan1;
        case 2: return nesne2->yapan2;
        case 3: return nesne3->yapan3;
        case 4: return nesne4->yapan4;
        case 5: return nesne5->yapan5;
        case 6: return nesne6->yapan6;
        case 7: return nesne7->yapan7;
        case 8: return nesne8->yapan8;;
        case 9: return nesne9->yapan9;
        case 10: return nesne10->yapan10;
        case 11: return nesne11->yapan11;
        case 12: return nesne12->yapan12;
        case 13: return nesne13->yapan13;
        case 14: return nesne14->yapan14;
        case 15: return nesne15->yapan15;
        case 16: return nesne16->yapan16;
        case 17: return nesne17->yapan17;
        case 18: return nesne18->yapan18;
        case 19: return nesne19->yapan19;
        case 20: return nesne20->yapan20;
        case 21: return nesne21->yapan21;
        case 22: return nesne22->yapan22;
        case 23: return nesne23->yapan23;
        case 24: return nesne24->yapan24;
    }
}
