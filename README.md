### Description
This is a fix for nm-applet not showing wifi networks on Xubuntu 16.04.  
Looks like nm-applet doesn't like to be owned by session and startup.  
Distributable under MIT license.

### Installation
For single manual fix: Run ./nm-applet-fix.sh.  
For sustained fix: Add #/path/to/fix-on-unlock.sh & disown to "Session and Startup > Application Autostart".  
(now works on unlock, wake from suspend, and login! This took me longer to make than nm-applet-fix.sh :/)  
Uncheck "Network (Manage your network connections)." This is the default nm-applet launcher.  

### Changelog
Third commit: Now works when you wake from sleep.  
Second commit: Fixed non-quiet flag execution.  
Initial commit: Initial Commit.