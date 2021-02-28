import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.15

Window {
    id: window
    width: 400
    height: 300
    visible: true
    title: qsTr("My Form")
    color: "#e1e1e1"

    property string error_text

    ColumnLayout{
        spacing: 5
        anchors.fill: parent
        anchors.margins: 10

        TextField{
            id: name_field
            placeholderText: "Name"
            Layout.fillWidth: true
        }

        TextField{
            id: address_field
            placeholderText: "Address"
            Layout.fillWidth: true
        }

        TextField{
            id: phone_field
            placeholderText: "Phone"
            Layout.fillWidth: true
        }

        Text{
            id: error_text
            text: window.error_text
            color: "red"
            font.pixelSize: 20
            visible: window.error_text? true : false
        }

        Button{
            text: "Save"
            Layout.alignment: Qt.AlignRight

            onClicked: {
                window.error_text = null

                var name = name_field.text
                var address = address_field.text
                var phone = phone_field.text

                if(name.length === 0){
                    window.error_text = "You must enter your name!"
                    return
                }

                if(address.length === 0){
                    window.error_text = "You must enter your address!"
                    return
                }

                if(phone.length === 0){
                    window.error_text = "You must enter your phone!"
                    return
                }

                print(name, address, phone)
            }
        }
    }
}
