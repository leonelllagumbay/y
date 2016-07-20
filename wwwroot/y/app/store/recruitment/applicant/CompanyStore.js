Ext.define('iBOSe.store.recruitment.applicant.CompanyStore', {
	extend: 'Ext.data.Store',
	alias: 'store.ibosecompanystore',
	model: 'iBOSe.model.recruitment.applicant.CompanyModel',
	autoLoad: false,
	pageSize: 30,
	proxy: {
		type: 'direct',
		directFn: 'Ext.administrator.Lookup.getCompany',
		reader: {
            rootProperty: 'topics',
            totalProperty: 'totalCount'
        }
	}
});
