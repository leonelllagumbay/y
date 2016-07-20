Ext.define('iBOSe.store.recruitment.applicant.LevelOfExpertiseStore', {
	extend: 'Ext.data.Store',
	alias: 'store.iboselevelofexpertisestore',
	model: 'iBOSe.model.recruitment.applicant.LevelOfExpertiseModel',
	autoLoad: false,
	pageSize: 30,
	proxy: {
		type: 'direct',
		directFn: 'Ext.administrator.Lookup.getLevelOfExpertise',
		reader: {
            rootProperty: 'topics',
            totalProperty: 'totalCount'
        }
	}
});
