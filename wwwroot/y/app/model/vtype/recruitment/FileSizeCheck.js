Ext.define('iBOSe.model.vtype.recruitment.FileSizeCheck', {
    override: 'Ext.form.field.VTypes',

    filesizecheck:  function(v) {
		var posleng = Ext.get('filesizeid').getValue();
		var posleng    = parseInt(posleng); 
		if (posleng > 250000 || posleng < 0)
		{
        	return false;
		}
		else
		{
			return true;
		}
	},
    filesizecheckText: 'File size must not exceed 250 Kb'
});