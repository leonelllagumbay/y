Ext.define('iBOSe.store.recruitment.applicant.PositionStore', {
	extend: 'Ext.data.Store',
	alias: 'store.ibosepositionstore',
	model: 'iBOSe.model.recruitment.applicant.PositionModel',
	autoLoad: false,
	pageSize: 30,
	proxy: {
		type: 'direct',
		directFn: 'Ext.administrator.Lookup.getPosition',
		reader: {
            rootProperty: 'topics',
            totalProperty: 'totalCount'
        }
	}
});
