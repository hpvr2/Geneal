import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias buttonReadIni: buttonReadIni
    property alias buttonReadCSV: buttonReadCSV
    property alias buttonReadGedcom: buttonReadGedcom
    Button {
        id: buttonReadIni
        x: 133
        y: 61
        text: qsTr("Read Ini File")
        checkable: false
    }

    Button {
        id: buttonReadGedcom
        x: 133
        y: 120
        text: qsTr("Read Gedcom  File")
        checkable: true
    }

    Button {
        id: buttonReadCSV
        x: 280
        y: 61
        text: qsTr("Read CSV  File")
        checkable: false
    }

}
