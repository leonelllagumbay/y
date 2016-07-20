
Ext.define("iBOSe.view.room.Room",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.room.RoomController",
        "iBOSe.view.room.RoomModel"
    ],
    xtype: "iboserooms",
    title: "eRooms",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "room-room",
    viewModel: {
        type: "room-room"
    },

    items: [{
    	xtype: "textfield",
    	fieldLabel: "eRooms"
    }]
});
