### Description
This is a fix for nm-applet not showing wifi networks on Xubuntu 16.04.  
Looks like nm-applet doesn't like to be owned by session and startup.  
Distributable under MIT license.

### Installation
Copy this somewhere it won't get deleted.  
Chmod +x $/path/to/file/name  
Add $/path/to/file/name to "Session and Startup > Application Autostart". For no notification, add the --quiet flag.  
Uncheck "Network (Manage your network connections).  