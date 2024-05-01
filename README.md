# KeyRemapping

This is a simple project to remap keys on macOS. It uses the `hidutil` command line tool to remap keys. The `hidutil` tool is available on macOS 10.12 and later.

## usage

1. clone the project
2. modify the main.swift file to remap the keys as you wish
3. run the project, it will create a file in "~/Library/LaunchAgents" that will run the script on startup
4. restart your computer

## for non-developers

you can just use <https://hidutil-generator.netlify.app/> to generate the file and put it in `~/Library/LaunchAgents/com.local.KeyRemapping.plist`
