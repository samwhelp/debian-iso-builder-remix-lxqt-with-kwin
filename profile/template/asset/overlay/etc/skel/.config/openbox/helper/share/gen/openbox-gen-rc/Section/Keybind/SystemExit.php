

	<!-- ## Reconfigure //-->
	<keybind key="A-S-c">
		<action name="Reconfigure" />
	</keybind>




	<!-- ## Logout //-->
	<keybind key="A-S-x">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>Logout</name>
			</startupnotify>
			<command>lxqt-leave --logout</command>
		</action>
	</keybind>


	<!-- ## Logout (Openbox) //-->
	<keybind key="A-C-x">
		<action name="Exit" />
	</keybind>

	<keybind key="C-A-Delete">
		<action name="Exit" />
	</keybind>




<?php
/*
	<keybind key="A-S-z">
		<action name="Restart" />
	</keybind>
*/
?>


	<!-- ## Leave //-->
	<keybind key="A-S-z">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>Leave</name>
			</startupnotify>
			<command>lxqt-leave</command>
		</action>
	</keybind>


	<!-- ## Lock Screen //-->
	<keybind key="A-C-z">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>LockScreen</name>
			</startupnotify>
			<command>lxqt-leave --lockscreen</command>
		</action>
	</keybind>	




<?php
/*

run

``` sh
lxqt-leave --help
```

show

```
Usage: lxqt-leave [options]
LXQt Leave

Options:
  -h, --help     Displays help on commandline options.
  --help-all     Displays help including Qt specific options.
  -v, --version  Displays version information.
  --logout       Logout.
  --lockscreen   Lockscreen.
  --suspend      Suspend.
  --hibernate    Hibernate.
  --shutdown     Shutdown.
  --reboot       Reboot.
```

*/
?>
