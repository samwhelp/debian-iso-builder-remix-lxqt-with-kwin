

	<keybind key="Print">
		<action name="Execute">
			<command>screengrab --fullscreen</command>
		</action>
	</keybind>


	<keybind key="W-Print">
		<action name="Execute">
			<command>screengrab --active</command>
		</action>
	</keybind>


	<keybind key="C-Print">
		<action name="Execute">
			<command>screengrab --region</command>
		</action>
	</keybind>


	<keybind key="A-Print">
		<action name="Execute">
			<command>screengrab</command>
		</action>
	</keybind>


<?php
/*

## Help

run

``` sh
screengrab --help
```

show

```
Usage: screengrab [options]
ScreenGrab is a crossplatform application for fast creating screenshots of your desktop.

Options:
  -h, --help        Displays help on commandline options.
  --help-all        Displays help including Qt specific options.
  -v, --version     Displays version information.
  -f, --fullscreen  Take a fullscreen screenshot
  -a, --active      Take a screenshot of the active window
  -r, --region      Take a screenshot of a selection of the screen
  -m, --minimized   Run the application with a hidden main window

```

*/
?>




	<!-- Launch scrot when Print is pressed -->
	<!--
	<keybind key="Print">
		<action name="Execute">
			<command>scrot</command>
		</action>
	</keybind>
	//-->


	<!-- Take a screenshot of the current window with scrot when Alt+Print are pressed -->
	<!--
	<keybind key="A-Print">
		<action name="Execute">
			<command>scrot -s</command>
		</action>
	</keybind>
	//-->


<?php
/*

## Help

* $ man scrot

*/
?>
