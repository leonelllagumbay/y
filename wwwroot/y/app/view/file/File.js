
Ext.define("iBOSe.view.file.File",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.file.FileController",
        "iBOSe.view.file.FileModel"
    ],
    xtype: "ibosefiles",
    title: "eFiles",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,
    
    controller: "file-file",
    viewModel: {
        type: "file-file"
    },

    html: "Hello, eFiles!!"
});
