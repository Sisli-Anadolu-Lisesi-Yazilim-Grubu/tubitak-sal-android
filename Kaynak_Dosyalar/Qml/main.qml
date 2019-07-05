import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    visible: true
    width: 480
    height: 640
    title: qsTr("TÜBİTAK 4006 ŞAL")

    Loader {
        id: giris_Ekrani
        source: "GirisEkrani.qml"
        anchors.fill: parent

        Timer {
            interval: 3000; running: true; repeat: false
            onTriggered: {
                swipeView.visible = true
                giris_Ekrani.visible = false
                tabBar.visible = true
                toolbar.visible = true
            }
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        visible: false
        onCurrentIndexChanged: {
            if (currentIndex == 0)
            {
                toolbar.visible = true
                tab_background.color = "#25258e"
                tab1_background.color = "grey"
            }

            else if (currentIndex == 1)
            {
                toolbar.visible = false
                tab_background.color = "grey"
                tab1_background.color = "#25258e"
            }
        }

        Item {
            id: first_page

            Loader {
                id: proje_Ekrani
                active: swipeView.isCurrentItem || swipeView.isNextItem || swipeView.isPreviousItem
                source: "ProjeEkrani.qml"
                anchors.fill: parent
            }
        }

        Item {
            id: second_page

            Loader {
                id: okul_Ekrani
                active: swipeView.isCurrentItem || swipeView.isNextItem || swipeView.isPreviousItem
                source: "OkulEkrani.qml"
                anchors.fill: parent
            }
        }
    }

    header: ToolBar {
        id: toolbar
        visible: false

        RowLayout {
            anchors.fill: parent

            Label {
                text: qsTr("TÜBİTAK 4006 ŞAL")
                anchors.centerIn: parent
            }

            ToolButton {
                text: qsTr(":")
                onClicked: menu.open()
                anchors.right: parent.right

                Menu {
                    id: menu

                    Menu {
                        title: qsTr("Tarih")

                        MenuItem {
                            text: qsTr("Şişli'nin Dünü ve Bugünü")
                            onTriggered: {
                                program.degerAta(1);
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Nil Deltasında Solmuş Bir Çiçek")

                            onTriggered: {
                                program.degerAta(8); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Şişli Yerel Tarih Farkındalığı")

                              onTriggered: {
                                program.degerAta(20); //tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }
                    }

                    Menu {
                        title: qsTr("Biyoloji")

                        MenuItem {
                            text: qsTr("Arıtılan Bakteri")

                            onTriggered: {
                                program.degerAta(2); //tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("İdeal Su")
                            onTriggered: {
                                program.degerAta(3); //tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Ses Frekansının Filizlenmeye Etkisi")
                            onTriggered: {
                                program.degerAta(4); //tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Hem Bakımlı Hem Sağlıklı Ol")
                            onTriggered: {
                                program.degerAta(9); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Vitaminli Jenerasyon")
                            onTriggered: {
                                program.degerAta(10); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Kompost")
                            onTriggered: {
                                program.degerAta(13); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Aktif Karbon")
                            onTriggered: {
                                program.degerAta(19); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Gen Aktarımı")
                            onTriggered: {
                                program.degerAta(22); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }
                    }

                    Menu {
                        title: qsTr("Fizik")


                        MenuItem {
                            text: qsTr("Görmeden Kalkan Engeller")
                            onTriggered: {
                                program.degerAta(5); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Yürüyen Kristaller")
                            onTriggered: {
                                program.degerAta(7); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Kasislere Son")
                            onTriggered: {
                                program.degerAta(16); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Kırmızı-Mavi")
                            onTriggered: {
                                program.degerAta(23); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }
                    }

                    Menu {
                        title: qsTr("Edebiyat")

                        MenuItem {
                            text: qsTr("İleri Düşün Geri Dönüştür")
                            onTriggered: {
                                program.degerAta(6); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Suçlularla Empati")
                            onTriggered: {
                                program.degerAta(11); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("İstanbul'da Yaşamış Edebiyatçılar")
                            onTriggered: {
                                program.degerAta(12); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Bireylere Dayatılan Cinsiyet")
                            onTriggered: {
                                program.degerAta(15); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Annesiz Büyüyen Şairler")
                            onTriggered: {
                                program.degerAta(18); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }
                    }

                    Menu {
                        title: qsTr("Coğrafya")

                        MenuItem {
                            text: qsTr("Küresel Isınma ve İklim Değişikliliği")
                            onTriggered: {
                                program.degerAta(14); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }
                    }

                    Menu {
                        title: qsTr("İngilizce")

                        MenuItem {
                            text: qsTr("Apptionary")
                            onTriggered: {
                                program.degerAta(17); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }
                    }

                    Menu {
                        title: qsTr("Matematik")

                        MenuItem {
                            text: qsTr("Olasılık Konusu Hakkında Oyun")
                            onTriggered: {
                                program.degerAta(21); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }
                    }

                    Menu {
                        title: qsTr("Almanca")

                        MenuItem {
                            text: qsTr("Almanca Sıfatlarının Öğretilmesi")
                            onTriggered: {
                                program.degerAta(24); // tamam
                                proje_Ekrani.item.projeAc()
                            }
                        }
                    }
                }
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        visible: false

        TabButton {
            id: tab
            text: qsTr("Projeler")
            font.pixelSize: window.height / 32
            onClicked: {
                tab_background.color = "#25258e"
                tab1_background.color = "grey"
            }

            Rectangle {
                id: tab_background
                anchors.fill: parent
                color: "#25258e"
            }
        }

        TabButton {
            id: tab1
            text: qsTr("Okul")
            font.pixelSize: window.height / 32
            onClicked: {
                tab1_background.color = "#25258e"
                tab_background.color = "grey"
            }

            Rectangle {
                id: tab1_background
                anchors.fill: parent
                color: "grey"
            }
        }
    }
}
