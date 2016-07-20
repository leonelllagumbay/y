
Ext.define("iBOSe.view.stickynotes.StickyNotes",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.stickynotes.StickyNotesController",
        "iBOSe.view.stickynotes.StickyNotesModel"
    ],

    xtype: "ibosestickynotes",
    title: "Sticky Notes",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,
    controller: "stickynotes-stickynotes",
    viewModel: {
        type: "stickynotes-stickynotes"
    },

    items: [{
    	xtype: "textfield",
    	fieldLabel: "Sticky Notes"
    },{
    	xtype: 'monthfield'
    },{
    	xtype: 'datefield'
    }]
});
