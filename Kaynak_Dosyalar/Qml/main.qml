import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    visible: true
    width: 480
    height: 640
    title: qsTr("TÜBİTAK 4006 ŞAL")
    property var picture
    property var pictureNo

    GirisEkrani {
        id: giris_Ekrani
        anchors.fill: parent

        Timer {
            interval: 3000; running: true; repeat: false
            onTriggered: {
                swipeView.visible = true
                giris_Ekrani.visible = false
                tabBar.visible = true
                actionBar.visible = true
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
                actionBar.visible = true
                tab_background.color = "#25258e"
                tab1_background.color = "grey"
            }

            else if (currentIndex == 1)
            {
                actionBar.visible = false
                tab_background.color = "grey"
                tab1_background.color = "#25258e"
            }
        }

        Item {
            id: firstPage

            ProjeEkrani {
                id: proje_Ekrani
                anchors.fill: parent
                mouseArea.onClicked: {
                    swipeView.visible = false
                    actionBar.visible = false
                    tabBar.visible = false
                    resimEkrani.visible = true
                    openPicture()
                }
            }
        }

        Item {
            id: secondPage

            OkulEkrani {
                id: okul_Ekrani
                anchors.fill: parent
            }
        }
    }

    ResimEkrani {
        id: resimEkrani
        visible: false
        anchors.fill: parent

        toolButton.onClicked: {
            resimEkrani.visible = false
            swipeView.visible = true
            actionBar.visible = true
            tabBar.visible = true
        }
    }

    header: ActionBar {
        id: actionBar
        visible: false
        height: toolButton.height
        menuItem1.onTriggered: openProject(1)
        menuItem2.onTriggered: openProject(2)
        menuItem3.onTriggered: openProject(3)
        menuItem4.onTriggered: openProject(4)
        menuItem5.onTriggered: openProject(5)
        menuItem6.onTriggered: openProject(6)
        menuItem7.onTriggered: openProject(7)
        menuItem8.onTriggered: openProject(8)
        menuItem9.onTriggered: openProject(9)
        menuItem10.onTriggered: openProject(10)
        menuItem11.onTriggered: openProject(11)
        menuItem12.onTriggered: openProject(12)
        menuItem13.onTriggered: openProject(13)
        menuItem14.onTriggered: openProject(14)
        menuItem15.onTriggered: openProject(15)
        menuItem16.onTriggered: openProject(16)
        menuItem17.onTriggered: openProject(17)
        menuItem18.onTriggered: openProject(18)
        menuItem19.onTriggered: openProject(19)
        menuItem20.onTriggered: openProject(20)
        menuItem21.onTriggered: openProject(21)
        menuItem22.onTriggered: openProject(22)
        menuItem23.onTriggered: openProject(23)
        menuItem24.onTriggered: openProject(24)
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        visible: false

        TabButton {
            id: tab
            text: qsTr("Projeler")
            font.pixelSize: window.height / 32
        }

        TabButton {
            id: tab1
            font.pixelSize: window.height / 32
            
            Image {
                id: backgroundImage
                source: "qrc:/resimler/resimler/info.png"
                width: parent.width / 3.5
                height: parent.height - 10
                anchors.centerIn: parent
            }
        }
    }

    function openProject(value)
    {
        pictureNo = value
        program.degerAta(value);
        proje_Ekrani.projeAc(value)
    }

    function openPicture()
    {
        program.degerAta(pictureNo)
        picture = "qrc:/proje_fotoraflari/proje_fotorafları/" + pictureNo + ".jpg"
        resimEkrani.label.text = program.dondurBaslik()
        resimEkrani.image.source = picture
    }
}
