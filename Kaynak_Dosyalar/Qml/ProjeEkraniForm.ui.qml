import QtQuick 2.12
import QtQuick.Controls 2.3

Image {
    id: root
    width: 480
    height: 640
    property alias mouseArea: mouseArea
    property alias image: image
    property alias baslik: baslik
    property alias metin: metin
    source: "qrc:/resimler/resimler/arkaplan.jpg"
    anchors.centerIn: parent

    Column {
        id: column
        width: parent.width / 1.1
        height: parent.height / 1.1
        anchors.centerIn: parent
        spacing: height / 10 - 25

        Rectangle {
            id: label_background
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            width: baslik.width + 10
            height: baslik.height + 10
            radius: 10
            border.color: "grey"
            border.width: 2

            Label {
                id: baslik
                width: column.width / 1.2
                text: qsTr("Şişli Anadolu Lisesi")
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                font.bold: true
                font.pixelSize: 15
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: scroll_background
            width: parent.width
            height: parent.height - (parent.spacing + label_background.height)
            color: "#ffffff"
            radius: 10
            border.color: "grey"
            border.width: 3

            ScrollView {
                id: scrollView
                anchors.fill: parent
                contentWidth: parent.width - 10
                clip: true
                anchors.leftMargin: 5
                anchors.rightMargin: 5
                anchors.bottomMargin: 5
                anchors.topMargin: 5

                Column {
                    id: scrollLayout
                    anchors.fill: parent
                    spacing: 2

                    Image {
                        id: image
                        width: (root.width - 80) / 2
                        height: (root.height - 40) / 3
                        anchors.horizontalCenter: parent.horizontalCenter
                        fillMode: Image.PreserveAspectFit
                        source: ""
                        visible: false

                        MouseArea {
                            id: mouseArea
                            anchors.fill: parent
                        }
                    }

                    Label {
                        id: metin
                        text: qsTr("\nSağ üst köşeden proje seçiniz...\n\nResime dokunarak resimi büyütebilrsiniz...")
                        wrapMode: Text.WordWrap
                        width: parent.width
                    }
                }
            }
        }
    }
}
