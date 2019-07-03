import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    id: page
    width: 480
    height: 640
    anchors.fill: parent

    Image {
        id: image
        x: 40
        y: 120
        anchors.centerIn: parent
        source: "qrc:/resimler/resimler/sal-logo.jpg"
        width: parent.width / 1.5
        height: parent.height / 2
    }
}
