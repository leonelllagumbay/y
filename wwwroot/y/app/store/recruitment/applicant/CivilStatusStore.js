Ext.define('iBOSe.store.recruitment.applicant.CivilStatusStore', {
	extend: 'Ext.data.Store',
	alias: 'store.ibosecivilstatusstore',
	model: 'iBOSe.model.recruitment.applicant.CivilStatusModel',
	autoLoad: false,
	proxy: {
		type: 'direct',
		directFn: 'Ext.administrator.Lookup.getCivilStatus',
		reader: {
            rootProperty: 'topics',
            totalProperty: 'totalCount'
        }
	}
});
