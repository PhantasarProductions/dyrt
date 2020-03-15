# Workspace dir

The workspace directory is automatically created when you start the game for the first time. In it the games stores some global configuration files, needed swap files and the savegame files.
By default the workspace directory is created as a subfolder I use for my .NET projects, which is in Windows:

C:\Users\<your system name\.Tricky__ApplicationSupport

On Unix based systems such as MacOS and Linux this would be
~/.Tricky__ApplicationSupport

Of coruse, that would be if you run the game from Mono, of which I do NOT know if that works. How Wine handles it, I don't know at all, it will probably use it's own fake C-drive with its own home folder on it...(???) (Never fully explored that).
I must note that the game has no official Linux or Mac support (at least not yet, and I have no plans for those platforms... yet).

In this folder you will find a folder named "BubbleHome", and in that folder you will find a folder named "3530eec8a6837c2a57f7b68de5b4f1a9", which is the identification number generated when I began this project.

In there you'll find "Save" and "Swap".... Swap should always be left alone... Messing with that folder can have spectacular results for which I do not take any responsibility, at all....
"Save" is the savegame directory.

# I want a different workspace folder, but how?

You'll have to note that "BubbleHome" and anything that comes before that can be changed. You can of course by altering the environment variables in your OS, change this folder, no problem, this will of course, change everything for all software you run, and not only this game. Just a note.
All Bubble based engines (of which NALA is one), can make sure of their own configuration for this, although I must note to prevent misinterpretation, that Bubble does not handle this per project, but for all projects using a Bubble based engine. Some engines I have plans for not based on Bubble may by the way use the same config.

The Bubble config file is called "Bubble_globalconfig.gini" and you can find it in the .Tricky_ApplicationSupport directory, or create it yourself if it doesn't exist. I must note that I advice to use a text editor that supports Unix line endings (LF for line endings only), as the GINI parser, used to read this file prefers that.

Now if you create the file yourself, type this
~~~ini
[vars]
BUBBLEHOME=<Your folder name here>
~~~

Now if you alter an existing file make sure it has a [vars] heading and type the line somewhere below that.

What I can note is that my personal C# frameworks support an alternate drive by name system able to detect drives by their label. If you have an external device called "MyDevice" you can for example do this
~~~ini
[vars]
BUBBLEHOME=MyDevice:BubbleHome
~~~
Please note no slashes or backslashes are allowed between the : and the first folder name, as the system will add it by itself... If MyDevice is mounted on F: the system will translate this to F:/BubbleHome
I could not yet fully test this on Unix devices, though. This system has been implemented in order to avoid any system confusion if external devices are suddenly mounted on different drive letters without proper explanation, which can sometimes happen in Windows.

I do advice not to use USB sticks for BubbleHome directories. The swapping system of the game is made to write as little as possible, but still the life span of your USB stick can be shortened pretty terribly. A magnetic device is preferrable. SSD systems are less vulnerable, but still suffer a bit here too (my main reason to implement this system as a whole. I created this project entirely on an external magnetic HD for a reason).

# If I zip/rar/7z this entire BubbleHome folder to extract it on a new computer does it then have all my savegames of the game?

If done properly... yes. You should of course, take in mind that the folder must be placed either in the correct home folder or that you must link the BubbleGlobalConfig.Gini file properly to the folder on your new system.

# Now I had on my old computer the system configured to save all my savegames on my portable USB harddrive. If I connect it to my new computer all I have to do is link the GINI config on my new device and I'm set.

Yes, that should be how it works.

# Can I use a cloud folder like DropBox or Google Drive as my save folder

Yes, of course, but a word of caution is required. There should only be ONE active player at the time playing on that folder. If multiple players are on that folder at once things can REALLY REALLY go crazy. This because the swap folder can cause conflicts between the two players.
However if you are the only player and want to play the game at home, and if your boss allows you to play this game in a few off-hours, for example, then installing the game home and at work should make that you can just load the same data on both places.
Of course, when you use a shared folder in a home network, the same warning applies. I am thinking about some ways to prevent these kinds of network issues in future versions of NALA or my work in general.

# Can I save on-line somehow?

Aside from using folders that automatically update in cloud services no. Nor do I have any plans for that, not even through Game Jolt.

# Important note!

If you play logged in to Game Jolt the credentials (username and token) are stored in the savegame file. Spreading those files in public is therefore a form of account fraud which is not allowed by Game Jolt, but also not by me.
Should I find out about this, measures can be taken to block Game Jolt access from these savegames. In the worst case scenario fraud can even lead to all users losing this access, a step I don't wish to take, but which I will do if necessary. Don't spoil the game for everyone.
Savegames with linked to Game Jolt may only be used by the owner of the respective Game Jolt accounts. Savegame files not linked to Game Jolt may be freeley distributed, although it should be noted that loading somebody else's savegames can be a form of cheating.
