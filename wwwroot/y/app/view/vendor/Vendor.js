
Ext.define("iBOSe.view.vendor.Vendor",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.vendor.VendorController",
        "iBOSe.view.vendor.VendorModel"
    ],
    xtype: "ibosevendors",
    title: "eVendors",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "vendor-vendor",
    viewModel: {
        type: "vendor-vendor"
    },

    html: "Hello, eVendors!!"
});
