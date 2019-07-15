import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ToolBar {
        id: toolbar
        property alias toolButton: toolButton
        property alias menuItem1: menuItem1
        property alias menuItem2: menuItem2
        property alias menuItem3: menuItem3
        property alias menuItem4: menuItem4
        property alias menuItem5: menuItem5
        property alias menuItem6: menuItem6
        property alias menuItem7: menuItem7
        property alias menuItem8: menuItem8
        property alias menuItem9: menuItem9
        property alias menuItem10: menuItem10
        property alias menuItem11: menuItem11
        property alias menuItem12: menuItem12
        property alias menuItem13: menuItem13
        property alias menuItem14: menuItem14
        property alias menuItem15: menuItem15
        property alias menuItem16: menuItem16
        property alias menuItem17: menuItem17
        property alias menuItem18: menuItem18
        property alias menuItem19: menuItem19
        property alias menuItem20: menuItem20
        property alias menuItem21: menuItem21
        property alias menuItem22: menuItem22
        property alias menuItem23: menuItem23
        property alias menuItem24: menuItem24

        RowLayout {
            anchors.fill: parent

            Label {
                id: label
                text: qsTr("TÜBİTAK 4006 ŞAL")
                anchors.centerIn: parent
            }

            ToolButton {
                id: toolButton
                onClicked: menu.open()
                anchors.right: parent.right
                height: parent.height

                Image {
                    id: toolButtonBackground
                    source: "qrc:/resimler/resimler/actionButton.png"
                    anchors.fill: parent
                }

                Menu {
                    id: menu

                    Menu {
                        title: qsTr("Tarih")

                        MenuItem {
                            id: menuItem1
                            text: qsTr("Şişli'nin Dünü ve Bugünü")
                        }

                        MenuItem {
                            id: menuItem8
                            text: qsTr("Nil Deltasında Solmuş Bir Çiçek")
                        }

                        MenuItem {
                            id: menuItem20
                            text: qsTr("Şişli Yerel Tarih Farkındalığı")
                        }
                    }

                    Menu {
                        title: qsTr("Biyoloji")

                        MenuItem {
                            id: menuItem2
                            text: qsTr("Arıtılan Bakteri")
                        }

                        MenuItem {
                            id: menuItem3
                            text: qsTr("İdeal Su")
                        }

                        MenuItem {
                            id: menuItem4
                            text: qsTr("Ses Frekansının Filizlenmeye Etkisi")
                        }

                        MenuItem {
                            id: menuItem9
                            text: qsTr("Hem Bakımlı Hem Sağlıklı Ol")
                        }

                        MenuItem {
                            id: menuItem10
                            text: qsTr("Vitaminli Jenerasyon")
                        }

                        MenuItem {
                            id: menuItem13
                            text: qsTr("Kompost")
                        }

                        MenuItem {
                            id: menuItem19
                            text: qsTr("Aktif Karbon")
                        }

                        MenuItem {
                            id: menuItem22
                            text: qsTr("Gen Aktarımı")
                        }
                    }

                    Menu {
                        title: qsTr("Fizik")


                        MenuItem {
                            id: menuItem5
                            text: qsTr("Görmeden Kalkan Engeller")
                        }

                        MenuItem {
                            id: menuItem7
                            text: qsTr("Yürüyen Kristaller")
                        }

                        MenuItem {
                            id: menuItem16
                            text: qsTr("Kasislere Son")
                        }

                        MenuItem {
                            id: menuItem23
                            text: qsTr("Kırmızı-Mavi")
                        }
                    }

                    Menu {
                        title: qsTr("Edebiyat")

                        MenuItem {
                            id: menuItem6
                            text: qsTr("İleri Düşün Geri Dönüştür")
                        }

                        MenuItem {
                            id: menuItem11
                            text: qsTr("Suçlularla Empati")
                        }

                        MenuItem {
                            id: menuItem12
                            text: qsTr("İstanbul'da Yaşamış Edebiyatçılar")
                        }

                        MenuItem {
                            id: menuItem15
                            text: qsTr("Bireylere Dayatılan Cinsiyet")
                        }

                        MenuItem {
                            id: menuItem18
                            text: qsTr("Annesiz Büyüyen Şairler")
                        }
                    }

                    Menu {
                        title: qsTr("Coğrafya")

                        MenuItem {
                            id: menuItem14
                            text: qsTr("Küresel Isınma ve İklim Değişikliliği")
                        }
                    }

                    Menu {
                        title: qsTr("İngilizce")

                        MenuItem {
                            id: menuItem17
                            text: qsTr("Apptionary")
                        }
                    }

                    Menu {
                        title: qsTr("Matematik")

                        MenuItem {
                            id: menuItem21
                            text: qsTr("Olasılık Konusu Hakkında Oyun")
                        }
                    }

                    Menu {
                        title: qsTr("Almanca")

                        MenuItem {
                            id: menuItem24
                            text: qsTr("Almanca Sıfatlarının Öğretilmesi")
                        }
                    }
                }
            }
        }
    }
