Ext.define('iBOSe.model.vtype.recruitment.PhilHealthFormat', {
    override: 'Ext.form.field.VTypes',

    phformat:  function(v) {
    	var phformatSTR = /^\d{1,2}\-\d{1,9}\-\d{1}$|^0$/;
        return phformatSTR.test(v);
    },
    phformatText: 'Please follow this format: XX-XXXXXXXXX-X',
    phformatMask: /[\d\-]/i
});