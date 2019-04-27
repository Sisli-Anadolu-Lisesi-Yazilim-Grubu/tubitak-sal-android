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

	setupUi(this);
    buyut->setEnabled(false);
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
    this->hide();
}

void okul::ekran_degistir() {
	proje_ekrani *nesne = new proje_ekrani;
    nesne->show();
    delete this;
}

void proje_ekrani::on_bar_proje1_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/1.jpg' width='200' height='170' /></p><p>" + nesne1->metin1 + "</p>";
    const QString html2 = "<p align='center'>" + nesne1->baslik1 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje8_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/8.jpg' width='200' height='170' /></p><p>" + nesne8->metin8 + "</p>";
    const QString html2 = "<p align='center'>" + nesne8->baslik8 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje2_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/2.jpg' width='200' height='170' /></p><p>" + nesne2->metin2 + "</p>";
    const QString html2 = "<p align='center'>" + nesne2->baslik2 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje3_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/3.jpg' width='200' height='170' /></p><p>" + nesne3->metin3 + "</p>";
    const QString html2 = "<p align='center'>" + nesne3->baslik3 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje4_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/4.jpg' width='200' height='170' /></p><p>" + nesne4->metin4 + "</p>";
    const QString html2 = "<p align='center'>" + nesne4->baslik4 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje9_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/9.jpg' width='200' height='170' /></p><p>" + nesne9->metin9 + "</p>";
    const QString html2 = "<p align='center'>" + nesne9->baslik9 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje5_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/5.jpg' width='200' height='170' /></p><p>" + nesne5->metin5 + "</p>";
    const QString html2 = "<p align='center'>" + nesne5->baslik5 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje7_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/7.jpg' width='200' height='170' /></p><p>" + nesne7->metin7 + "</p>";
    const QString html2 = "<p align='center'>" + nesne7->baslik7 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje10_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/10.jpg' width='200' height='170' /></p><p>" + nesne10->metin10 + "</p>";
    const QString html2 = "<p align='center'>" + nesne10->baslik10 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje13_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/13.jpg' width='200' height='170' /></p><p>" + nesne13->metin13 + "</p>";
    const QString html2 = "<p align='center'>" + nesne13->baslik13 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje6_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/6.jpg' width='200' height='170' /></p><p>" + nesne6->metin6 + "</p>";
    const QString html2 = "<p align='center'>" + nesne6->baslik6 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje11_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/11.jpg' width='200' height='170' /></p><p>" + nesne11->metin11 + "</p>";
    const QString html2 = "<p align='center'>" + nesne11->baslik11 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje12_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/12.jpg' width='200' height='170' /></p><p>" + nesne12->metin12 + "</p>";
    const QString html2 = "<p align='center'>" + nesne12->baslik12 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje15_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/15.jpg' width='200' height='170' /></p><p>" + nesne15->metin15 + "</p>";
    const QString html2 = "<p align='center'>" + nesne15->baslik15 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje14_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/14.jpg' width='200' height='170' /></p><p>" + nesne14->metin14 + "</p>";
    const QString html2 = "<p align='center'>" + nesne14->baslik14 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje16_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/16.jpg' width='200' height='170' /></p><p>" + nesne16->metin16 + "</p>";
    const QString html2 = "<p align='center'>" + nesne16->baslik16 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje17_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/17.jpg' width='200' height='170' /></p><p>" + nesne17->metin17 + "</p>";
    const QString html2 = "<p align='center'>" + nesne17->baslik17 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje18_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/18.jpg' width='200' height='170' /></p><p>" + nesne18->metin18 + "</p>";
    const QString html2 = "<p align='center'>" + nesne18->baslik18 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje19_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/19.jpg' width='200' height='170' /></p><p>" + nesne19->metin19 + "</p>";
    const QString html2 = "<p align='center'>" + nesne19->baslik19 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje22_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/22.jpg' width='200' height='170' /></p><p>" + nesne22->metin22 + "</p>";
    const QString html2 = "<p align='center'>" + nesne22->baslik22 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje20_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/20.jpg' width='200' height='170' /></p><p>" + nesne20->metin20 + "</p>";
    const QString html2 = "<p align='center'>" + nesne20->baslik20 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje21_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/21.jpg' width='200' height='170' /></p><p>" + nesne21->metin21 + "</p>";
    const QString html2 = "<p align='center'>" + nesne21->baslik21 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje23_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/23.jpg' width='200' height='170' /></p><p>" + nesne23->metin23 + "</p>";
    const QString html2 = "<p align='center'>" + nesne23->baslik23 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_bar_proje24_triggered()
{
    buyut->setEnabled(true);
    const QString html1 = "<p align='center'><img src=':/photos/veriler/proje_fotorafları/24.jpg' width='200' height='170' /></p><p>" + nesne24->metin24 + "</p>";
    const QString html2 = "<p align='center'>" + nesne24->baslik24 + "</p>";

    baslikLabel->setText(html2);
    metinLabel->setHtml(html1);
}

void proje_ekrani::on_cikis_triggered()
{
    QApplication::quit();
}

void proje_ekrani::on_buyut_triggered()
{

}
