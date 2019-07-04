import QtQuick 2.12
import QtQuick.Controls 2.3

Image {
    width: 480
    height: 640
    property alias baslik: baslik
    property alias metin: metin
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
            width: baslik.width + 10
            height: baslik.height + 10

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

            ScrollView {
                id: scrollView
                anchors.fill: parent
                contentWidth: parent.width
                clip: true

                Column {
                    id: scrollLayout
                    anchors.fill: parent

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




/*##^## Designer {
    D{i:5;anchors_height:200;anchors_width:200;anchors_x:0;anchors_y:0}
}
 ##^##*/
