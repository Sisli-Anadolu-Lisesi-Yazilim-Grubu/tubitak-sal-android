import QtQuick 2.12
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3

GirisEkraniForm {
    footer: StatusBar {
        RowLayout {
            Label {
                text: qsTr("v2.0 Beta")
                font.pixelSize: 15
            }
        }
    }
}
