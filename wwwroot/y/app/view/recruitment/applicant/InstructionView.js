
Ext.define("iBOSe.view.recruitment.applicant.InstructionView",{
    extend: "Ext.panel.Panel",
    xtype: "instructionview",
    requires: [
        "iBOSe.view.recruitment.applicant.InstructionViewController",
        "iBOSe.view.recruitment.applicant.InstructionViewModel",
        "iBOSe.model.vtype.recruitment.FileSizeCheck"
    ],

    controller: "recruitment-applicant-instructionview",
    viewModel: {
        type: "recruitment-applicant-instructionview"
    },

    width: '80%', 
	height: '100%',
	layout: {
		type: 'vbox',
		align: 'flex'
	}, 
	'overflow-y': 'auto',
	'overflow-x': 'hidden',
	defaults: {
		anchor: '100%',
		padding: 7
	},
    defaultType: 'textfield',
	initComponent: function() {   
		this.items = [{
				xtype: 'textfield',
				flex: 6,
				name: 'SEQREFERENCE',
				hidden: true, 
				allowBlank: false
				//value: getURLParameter('norevert') || getURLParameter('yesrevert')
			},{
				xtype: 'displayfield',
				id: 'titleid',
				//value: '<img width=270 height= 70 src="'+getURLParameter('logopath')+'">' || "<h2>"+getURLParameter('companyname')+"</h2>",
				width: '100%',
				flex: 3,
			    name: 'companytitle'
			},{
				xtype: 'panel',
				width: '100%',
				flex: 15,
				layout: {
					type: 'hbox',
					align: 'stretch'
				},
				items: [{
					xtype: 'displayfield',
					value: '<b>Instructions:</b>',
					padding: 7,
					flex: 5
				},{
					xtype: 'displayfield',
					value: '<b><p>Complete all items. If not applicable, please type "NA" or "0" for numbers.</p> <p>Please make sure that all information that you will provide to us are true, complete and not misleading in any way:</p></b>',
					padding: 7,
					flex: 12
				},{
					xtype: 'panel',
					flex: 10,
					height: 250,
					padding: 7,
					items: [{
						xtype: 'panel',
						layout: {
							type: 'vbox',
							align: 'stretch'
						},
						style: {
							border: 'none'
						},
						items: [{
							xtype: 'filefield',
							id: 'files',
							name: 'filename',
							fieldLabel: 'Photo',
							labelWidth: 55,
					        msgTarget: 'side',
					        allowBlank: true,
					        anchor: '100%',
					        buttonText: 'Select',
					        listeners: {
								afterrender: function(evt, eOpts) {
									document.getElementById('files').addEventListener('change', handleFileSelect, false);
								}
							},
							vtype: 'filesizecheck'
						},{
							xtype: 'displayfield',
							id: 'list',
							flex: 6,
							value: '2 x 2 photo (at most 250 Kb)',
							width: 150,
							height: 150,
							name: 'myphotohere'  
						},{
							xtype: 'textfield',
							name: 'tempstoreforfilesize',
							hidden: true,
							id: 'filesizeid',
							flex: 1,
							value: ' '
						}]
					}]
				}]
			}],
			
		this.callParent(arguments);
	}
});
 
var handleFileSelect = function handleFileSelect(evt) {
  	
    var files = evt.target.files; // <!---FileList object--->
	//<!--- Loop through the FileList and render image files as thumbnails.--->
    for (var i = 0, f; f = files[i]; i++) {

      //<!--- Only process image files.--->
      if (!f.type.match('image.*')) {
        continue;
      }
	document.getElementById('filesizeid').value = f.size;
	var reader = new FileReader();

      //<!--- Closure to capture the file information.--->
      reader.onload = (function(theFile) {
        return function(e) {
          //<!--- Render thumbnail.--->
          var span = document.createElement('span');
          span.innerHTML = ['<img class="thumb" width="200" height="180" src="', e.target.result,
                            '" title="', escape(theFile.name), '"/>'].join('');
		  document.getElementById('list').innerHTML = '';
          document.getElementById('list').insertBefore(span, null);
        };
      })(f);

      //<!--- Read in the image file as a data URL.--->
      reader.readAsDataURL(f);
    }
  }