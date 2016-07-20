
Ext.define("iBOSe.view.gallery.Gallery",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.gallery.GalleryController",
        "iBOSe.view.gallery.GalleryModel"
    ],
    xtype: "ibosegallery",
    title: "eGallery",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "gallery-gallery",
    viewModel: {
        type: "gallery-gallery"
    },

    items: [{
    	xtype: "textfield",
    	fieldLabel: "eGallery"
    }]
});
