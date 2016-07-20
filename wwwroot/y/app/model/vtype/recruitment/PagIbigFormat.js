Ext.define('iBOSe.model.vtype.recruitment.PagIbigFormat', {
    override: 'Ext.form.field.VTypes',

    pagibigformat:  function(v) {
    	var pagibigformatSTR = /^\d{1,4}\-\d{1,4}\-\d{1,4}$|^0$/;
        return pagibigformatSTR.test(v);
    },
    pagibigformatText: 'Please follow this format: XXXX-XXXX-XXXX',
    pagibigformatMask: /[\d\-]/i
});