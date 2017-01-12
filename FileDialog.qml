import QtQuick 2.0

FileDialog{
    id: fileDialog
    title: "Please select Gedcom file"
    onAccepted: {
        console.log("You choosed: " + fileDialog.fileUrls[0])

        var fileid = fileDialog.fileUrls[0]
        console.log(genealFile.fileExists(fileid))

        var persons=Gedcom.parseGedcom(fileid)
        Qt.quit()
    }
    onRejected: {
        console.log("Canceled")
    }
}
