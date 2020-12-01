clearListener()

filein( getFilenamePath(getSourceFileName()) + "/../Menu.ms" )
filein( getFilenamePath(getSourceFileName()) + "/../../Dialog/Rollout/Rollout.ms" )


/* ROLLOUT DEFINITION */
_rollout	= Rollout_v title:(getFilenameFile(getSourceFileName())) id:"optionable_id"

/* CREATE ROLLOUT */
_rollout.createRollout()	-- create with default parameters


/** CREATE MENU 
 */
Menu = Menu_v() 

_menu	= Menu.menu "Menu"

/* CREATE DIALOG */
CreateDialog ( _rollout.RolloutCreator.getDefinition() ) menu:(Menu.create "MainMenu")