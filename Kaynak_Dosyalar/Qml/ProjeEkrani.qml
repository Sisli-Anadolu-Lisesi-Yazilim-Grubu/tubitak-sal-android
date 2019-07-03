import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ProjeEkraniForm {
    function projeAc()
    {
        baslik.text = program.dondurBaslik()
        metin.text = program.dondurMetin().concat(program.dondurYapan())
    }
}
