# magnet-handler #
PowerShell script to handle BT magnet links, and put them into .torrent files in a watch folder

When registered as the handler for magnet: links, this script formats the link into a .torrent file, and saves the resulting file in a user-defined folder. This is useful if your BT client is running on a different computer than your browser and you want to easily add items into its download queue via a shared folder. This works well with cloud sync clients like Dropbox to start torrents when away from home.

## Installation ##
### The Script ###
* Put the .ps1 file somewhere
* Edit the value of the __$watch__ variable to point to the folder that your BT client watches for new .torrent files. Don't forget a trailing "\\".
## Registering the handler ##
* Put the .reg file somewhere
* Modify the __HKEY_CLASSES_ROOT\\Magnet\\shell\\open\\command__ value with the path to your .ps1 file. Remember to escape your "\\"s.
* Merge the .reg
