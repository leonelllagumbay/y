Ext.define('iBOSe.view.recruitment.applicant.SourceViewController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.recruitment-applicant-sourceview',
    onSourceWebSiteChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		sourcewebsitesel: !newValue
    	});
    },
    onSourceJobFairChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		sourcejobfairsel: !newValue
    	});
    },
    onSourceReferralChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		sourcereferralsel: !newValue
    	});
    },
    onSourceOtherChange: function(tthis, newValue) {
    	var vmodel = this.getViewModel();
    	vmodel.setData({
    		sourceothersel: !newValue
    	});
    }
    
});
