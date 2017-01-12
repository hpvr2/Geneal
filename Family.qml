import QtQuick 2.0

Item {
    property int pid: 0
    property int husband : 0
    property int wife : 0

    property string marriagedate: ""
    property int    marriageyear  : 0
    property string marriageplace  : ""

    property string divorcedate  : ""
    property string divorceplace  : ""

    property var     children     : []

    property string note  : ""

    function prt(){
        console.log(pid + " " + husband+  " " + wife + " " + marriagedate + " Childs " + children)
    }


}


