import QtQuick 2.12
import QtQuick.Controls 2.3

Image {
    width: 480
    height: 640
    source: "qrc:/resimler/resimler/arkaplan.jpg"
    anchors.centerIn: parent

    Column {
        id: column
        width: parent.width / 1.25
        height: parent.height / 1.1
        anchors.centerIn: parent
        spacing: height / 10 - 2

        Rectangle {
            id: label_background
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            width: label.width + 10
            height: label.height + 10

            Label {
                id: label
                width: column.width / 1.2
                text: qsTr("Şişli Anadolu Lisesi")
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                anchors.centerIn: parent
                font.bold: true
                font.pixelSize: 15
            }
        }

        Rectangle {
            id: scroll_background
            width: parent.width
            height: parent.height - (parent.spacing + label_background.height)
            color: "#ffffff"

            ScrollView {
                id: scrollView
                anchors.fill: parent
                contentWidth: parent.width
                clip: true

                Label {
                    id: metin
                    width: scrollView.width
                    height: scrollView.height
                    text: qsTr("TÜBİTAK 4006 ŞAL v1.5 Beta\n\nUygulamayı Yapanlar:\nSamet Sevindik 9/A\nFatih Mehmet Gümüşçü 9/A\nGökhan Pınarcı 9/A\nAli Contarlı 9/A\nFurkan Bağ 9/A\n\nTübitak Projesi Yapanlar:\nTunç Alpartun 9/A\nUlvi Kesim 9/A\nGökmen Erçayan 9/A\nAli Contarlı 9/A \nSude 10/B\nHatice 10/B\nSağra Nur Tepe 11/A\nEsmanur Duran 11/A \nMerve Gökmen 11/B\nİrem Şener 11/B\nÖykü Yurtsever 11/C\nMarah Alasi 11/C \nSegenay Selcan Kurt 11/A\nEmine Eşgünoğlu 11/A\nBuse Tokgöz 11/A\nİdil Günce Gerçek 11/A\nNecre Okumuş 11/A\nİlayda Çaygöz 11/A\nSedat Yıldır 11/A\nGöksel Güven Hayta 11/A\nYusuf Eren Aksakal 11/A\nBilgenur Demir 11/A\nEfekan Demirağ 11/A\nCemil Altuğ Tole 11/A\nNur Akyüz 11/C\nEfsun Gönül Demircan \nBuse Aydemir 11/C\nİrem Yorulmaz 11/C\nMustafa Sezer Yerli 11/C\nElif Tan 11/C\nEla Alişir 11/C\nMiray Hazal Canıbek 11/C\nHasret Orğan 11/C\nElif Zehra Kam 11/C\nBeyza Çelebi 11/C\nDila Şahin 11/D\nPınar Çiftci 11/D\nZeynep Betül Kucur 11/D\nHatice Konaç 11/D\nPınar Aksu 11/D\nGülsen Kamilçelebi 11/D\nGaye Kartal 11/D\nKerem Baş 11/D\nTuana Aydoğan 11/D\nElif Hangün 9/A\nMurat Yüce 9/A\nHatice Ece Uluç 9/A\nCeyda Yeliz Eren 9/A\nEce Özcanlı 9/A\nHanife Nazar Çatma 9/A\nHimet Neva Pelit 9/A\nEylül Karadağ 9/A\nBerine İrem Çinal 9/A\nMelisa Polat 9/A\nİdil Kurtcu 11/C\nEfsun Gönül Demircan 11/C\nEda Nur Türk 11/C\nElif Zehra Kam 11/C\nOzan Karatepe 11/C\nBarbaros Ege Bayır 11/C\nÖykü Yurtsever 11/C\nÖmer Sami Avcu 10/C\nMuharrem Emir Taşkın 10/C\nPınar Çiftçi 11/D\nZeynep Betül Kucur 11/D\nHatice Konaç 11/D\nPınar Aksu 11/D\nGülsen Kamilçelebi 11/D\nGaye Kartal 11/D\nKerem Baş 11/D\nYaren Demirel 10/A\n\n\nBu uygulama Qt Framework kullanılarak yapılmıştır...")
                    font.pointSize: 10
                    wrapMode: Text.WordWrap
                    textFormat: Text.PlainText
                    anchors.rightMargin: 0
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    font.family: "Verdana"
                }
            }
        }
    }
}




/*##^## Designer {
    D{i:5;anchors_height:200;anchors_width:200;anchors_x:0;anchors_y:0}
}
 ##^##*/
