import QtQuick 2.0
import "Gedcom.js" as Gedcom

Item {
    property url path : "file:///C:/Users/hans-/Documents/QML-Geneal/myGeneal-2/Data/" // todo : define user specific path
    property string file : "Bertram.ged"

    property string malecol  : "cyan"
    property string femalecol : "pink"

    property int firstyear : 1500
    property int lastyear  : 2017   // todo : use actual year

    property int ageatbirth_male   : 19
    property int ageatbirth_female : 16
    property int maxage_father     : 60
    property int maxage_mother     : 50
    property int maxage            : 100
    property int maxdelta_childs   : 40
    property int maxdelta_partners : 60



}



