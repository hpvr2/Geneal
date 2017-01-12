import QtQuick 2.7
import QtQuick.Dialogs 1.2
import "Gedcom.js" as Gedcom




Page1Form {

    // This is the main Page for Reading and editing

    // set initial values and read INI File



    // If Available, read CSV FileDialog

    // Enter filedialog for Gedcom File and store data in Objects : allPersons , allFamilies

    FileDialog {
        id: fileDialog
        title: "Please select Gedcom file"
        folder: appWindow.settings.path

        onAccepted: {
            console.log("You choosed: " + fileDialog.fileUrls[0])

            var fileid = fileDialog.fileUrls[0]
            console.log(genealFile.fileExists(fileid))

            var persons = Gedcom.parseGedcom(fileid)
            // console.log(persons)
            console.log("##########################################")
            for (var i in persons) {
                persons[i].prt()
            }

            Qt.quit()
        }
        onRejected: {
            console.log("Canceled")
        }
    }




    buttonReadGedcom.onClicked: {
        console.log("Read Gedcom")

        fileDialog.visible = true
    }
    //

    //    buttonReadCSV.onClicked: {
    //        console.log("Read CSV")
    //    }
    buttonReadIni.onClicked: {
        console.log("Read Ini")
//        var path = "file:///C:/Users/hans-/Documents/QML-Geneal/myGeneal-2/Data/"
//        var fileid = path + "myGeneal.ini"
//        if ( genealFile.fileExists(fileid)) {
//            console.log(genealFile.fileExists(fileid))
//            var a = Gedcom.readIni(fileid)
//        }
    }
}
