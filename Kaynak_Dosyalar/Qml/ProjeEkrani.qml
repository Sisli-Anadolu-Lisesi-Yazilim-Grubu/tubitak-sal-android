import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ProjeEkraniForm {
    property var picture

    function projeAc(value)
    {
        picture = "qrc:/proje_fotoraflari/proje_fotorafları/" + value + ".jpg"
        image.visible = true
        image.source = picture
        baslik.text = program.dondurBaslik()
        metin.text = program.dondurMetin().concat(program.dondurYapan())
    }
}
