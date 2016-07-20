Ext.define('iBOSe.model.vtype.recruitment.SSSFormat', {
    override: 'Ext.form.field.VTypes',

    sssformat:  function(v) {
    	var sssformatSTR = /^\d{1,2}\-\d{1,7}\-\d{1}$|^0$/;
        return sssformatSTR.test(v);
    },
    sssformatText: 'Please follow this format: XX-XXXXXXX-X',
    sssformatMask: /[\d\-]/i
});