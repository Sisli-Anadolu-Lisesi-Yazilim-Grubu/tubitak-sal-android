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
        anchors.centerIn: parent
        source: "qrc:/resimler/resimler/sal-logo.png"
        width: parent.width / 1.25
        height: parent.height / 2.1
    }
}
