import QtQuick 2.10
import QtQuick.Window 2.3

import QtQuick.LocalStorage 2.0 as Sql

import "steem/dsteem.js" as Steem
import "OSAuth.js" as OpenSeed

Window {
    id:mainView
    visible: true
    width:Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    title: qsTr("WayFinder Fleet")

    property string heart: "Offline"

    property string userid:""
    property string message:""

    property string appId: "WFFC-05152018"
    property string devId: "Vag-01001011"

    color:"black"
    property string borderColor: "#D2AF2B"

   /*Image {
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source:"./graphics/img/onlystars.png"
    } */

    Timer {
        id:heartbeats
        running: true
        //repeat: true
        interval: 2000
        onTriggered: OpenSeed.heartbeat()
    }

    Login {
        id:os_Login
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        state:"Engage"
    }

    Ship {
        id:ships
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        state:"Hide"

    }

    GeneralInfo {
        id:acCheck
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        state:"Hide"
    }


}
