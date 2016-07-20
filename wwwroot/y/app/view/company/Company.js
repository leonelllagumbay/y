
Ext.define("iBOSe.view.company.Company",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.company.CompanyController",
        "iBOSe.view.company.CompanyModel"
    ],
    xtype: "ibosecompany",
    title: "eCompany",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "company-company",
    viewModel: {
        type: "company-company"
    },

    html: "Hello, eCompany!!"
});
