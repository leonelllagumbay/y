Ext.define('iBOSe.model.vtype.recruitment.TinFormat', {
    override: 'Ext.form.field.VTypes',

    tinformat:  function(v) {
    	var tinformatSTR = /^\d{1,3}\-\d{1,3}\-\d{1,3}$|^0$/;
        return tinformatSTR.test(v);
    },
    tinformatText: 'Please follow this format: XXX-XXX-XXX',
    tinformatMask: /[\d\-]/i
});