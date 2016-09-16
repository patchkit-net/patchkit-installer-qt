function Component()
{
}

Component.prototype.createOperations = function()
{
	component.createOperations();

	if(systemInfo.productType == "windows")
	{
		component.addOperation("CreateShortcut", "@TargetDir@/Launcher.exe", "@StartMenuDir@/$NAME$.lnk",
            "workingDirectory=@TargetDir@");

		component.addOperation("CreateShortcut", "@TargetDir@/maintenancetool.exe", "@StartMenuDir@/Uninstall $NAME$.lnk",
            "workingDirectory=@TargetDir@");
	}
}