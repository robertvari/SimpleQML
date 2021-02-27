import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 400
    height: 300
    visible: true
    title: qsTr("My Form")
    color: "#e1e1e1"

    TextField {
        id: name_field
        x: 0
        y: 24
        width: 400
        height: 40
        placeholderText: qsTr("Name")
    }

    TextField {
        id: address_field
        x: 0
        y: 70
        width: 400
        height: 40
        placeholderText: qsTr("Address")
    }

    TextField {
        id: phone_field
        x: 0
        y: 123
        width: 400
        height: 40
        placeholderText: qsTr("Phone")
    }

    Button {
        id: button
        x: 50
        y: 210
        width: 301
        height: 66
        text: qsTr("Save")
        font.bold: true
        font.pointSize: 21

        onClicked: {
            var name = name_field.text
            var address = address_field.text
            var phone = phone_field.text

            print(name, address, phone)
        }
    }
}
