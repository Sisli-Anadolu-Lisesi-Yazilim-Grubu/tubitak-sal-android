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

    header: ActionBar {
        id: actionBar
        visible: false
        height: window.height / 14.22
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

    function openProject(value)
    {
        program.degerAta(value);
        proje_Ekrani.item.projeAc(value)
    }
}
