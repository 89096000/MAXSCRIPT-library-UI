/** http://help.autodesk.com/view/3DSMAX/2015/ENU/?guid=__files_GUID_E421933F_958E_42FD_80A1_D66F2A2C0A06_htm 
 *	
 */


/** Add RolloutControl
 */
function RolloutControl caption id: add:true =
(
	--print "------------\nControlBox.button()"
	this._newControl (Button_RolloutControl_test caption:caption ) id:id add:add
),

/** Add Button
 */
function button caption id: add:true =
(
	--print "------------\nControlBox.button()"
	this._newControl (Button_v caption:caption ) id:id add:add
),

/** Add Check button
 */
function checkbutton caption id: add:true =
(
	this._newControl (Control_v type:#checkbutton caption:caption ) id:id add:add
),

/** Add Checkbox
 */
function checkbox caption id: checked: add:true =
(
	this._newControl (Checkbox_v caption:caption ) id:id add:add
),

/** Add Edit text control
 */
function edit caption id: value: add:true =
(
	this._newControl (EditText_v caption:caption value:value ) id:id add:add
),

/** Browse Path control
 */
function path =
(
	browse_button	= this.button "..."	add:false
	edit_text	= this.edit "test_edit" value:"Test"	add:false

	initial_dir	= "C:\\"

	browse_button.pressed ( "messagebox "+(edit_text.prop #text #path ) )

	this.add browse_button
	this.add edit_text
),