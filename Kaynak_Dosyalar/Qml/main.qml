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
                text: qsTr("⋮")
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
                                program.degerAta(2);
                                proje_Ekrani.item.projeAc()
                            }
                        }

                        MenuItem {
                            text: qsTr("Şişli Yerel Tarih Farkındalığı")
                        }
                    }

                    Menu {
                        title: qsTr("Biyoloji")

                        MenuItem {
                            text: qsTr("Arıtılan Bakteri")
                        }

                        MenuItem {
                            text: qsTr("İdeal Su")
                        }

                        MenuItem {
                            text: qsTr("Ses Frekansının Filizlenmeye Etkisi")
                        }

                        MenuItem {
                            text: qsTr("Hem Bakımlı Hem Sağlıklı Ol")
                        }

                        MenuItem {
                            text: qsTr("Vitaminli Jenerasyon")
                        }

                        MenuItem {
                            text: qsTr("Kompost")
                        }

                        MenuItem {
                            text: qsTr("Aktif Karbon")
                        }

                        MenuItem {
                            text: qsTr("Gen Aktarımı")
                        }
                    }

                    Menu {
                        title: qsTr("Fizik")

                        MenuItem {
                            text: qsTr("Görmeden Kalkan Engeller")
                        }

                        MenuItem {
                            text: qsTr("Yürüyen Kristaller")
                        }

                        MenuItem {
                            text: qsTr("Kasislere Son")
                        }

                        MenuItem {
                            text: qsTr("Kırmızı-Mavi")
                        }
                    }

                    Menu {
                        title: qsTr("Edebiyat")

                        MenuItem {
                            text: qsTr("İleri Düşün Geri Dönüştür")
                        }

                        MenuItem {
                            text: qsTr("Suçlularla Empati")
                        }

                        MenuItem {
                            text: qsTr("İstanbul'da Yaşamış Edebiyatçılar")
                        }

                        MenuItem {
                            text: qsTr("Bireylere Dayatılan Cinsiyet")
                        }

                        MenuItem {
                            text: qsTr("Annesiz Büyüyen Şairler")
                        }
                    }

                    Menu {
                        title: qsTr("Coğrafya")

                        MenuItem {
                            text: qsTr("Küresel Isınma ve İklim Değişikliliği")
                        }
                    }

                    Menu {
                        title: qsTr("İngilizce")

                        MenuItem {
                            text: qsTr("Apptionary")
                        }
                    }

                    Menu {
                        title: qsTr("Matematik")

                        MenuItem {
                            text: qsTr("Olasılık Konusu Hakkında Oyun")
                        }
                    }

                    Menu {
                        title: qsTr("Almanca")

                        MenuItem {
                            text: qsTr("Almanca Sıfatlarının Öğretilmesi")
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
