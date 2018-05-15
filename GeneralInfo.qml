import QtQuick 2.0

import "OSAuth.js" as OpenSeed

WFBorder {
        id:thisWindow
        property string connection_type:""
        maxHeight: 300
        maxWidth: 300

        onStateChanged: if(state == "Show") {OpenSeed.account_type(userid)}


        Text {
            id: name
            text: connection_type
            color:borderColor
            anchors.centerIn: parent
        }

        onConnection_typeChanged: { if(connection_type == "Admin") {
                                         name.text = "Welcome Admiral";

                                  } else {
                                        name.text = "Welcome Fleet Commander";
                                    }
                                    dramatic_close.start();
                                }

        Timer {
            id:dramatic_close
            running: false
            interval: 2000
            onTriggered: {ships.state = "Engage";thisWindow.state = "Hide"}
        }

}
