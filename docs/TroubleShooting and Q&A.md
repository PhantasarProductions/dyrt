# Trouble shooting

Please only reports actual bugs. Things that go wrong can also be due to things that are not bugs.



# I hear a "beep" when I gain a trophy. Is that normal?

It means contacting Game Jolt failed. Except for logging in this won't lead to error messages, just that beep.
Mostly either:
- Your internet connection is broken or
- Game Jolt servers are down, or at least the parts that control the Game Jolt API.
Both scenarios are not something I can help. If not error messages appear, it mostly just means your achievement is not registered on the server.

An alternate (not super likely) scenario is that due to some serious security issues the authentication codes of the game itself have changed. In that case you just need to install the newest version.

# I downloaded the game on Itch.io. Can I still register my trophies on Game Jolt?

Yes, that functionality is present on the itch.io version. You do need to have a Game Jolt account though.

# During the start of a new game I was not asked to enter my Game Jolt credentials. What gives?

The game must have detected itself as modified, and then it won't allow Game Jolt access (anti-cheat precaution). If you are sure you got an unmodified version, maybe some of your files got corrupted. In that case re-download and re-install the game and try again.

# After downloading and installing the game the Dyrt.NET.exe file disappears

Replace AVG or Avast with a DECENT virusscanner.  😜😜😜
Seriously:
Some virusscanners delete all programs from developers they don't know (read: who don't pay them tons of money each year) without a warning. I woulnd't trust them, and I cannot afford to pay for those programs as a sign "you can trust me".
If your virusscanner supports whitelisting, make sure I am whitelisted. That way my stuff will not be auto-deemed unsafe, unless an actual virus is really in there, and then it will still react (at least, it should).

# How to play on Mac or Linux?

I cannot guarantee this works, as I never tried. This game (or at least it's underlying engine) uses the .NET framework, and that means that Dyrt.NET.exe is not composed of "pure machine language" (as you'd normally find in .exe files).
Windows should have the run-time environment by default (if not you should install .NET 4.5), but on Mac and Linux this framework does not officially exist.
Good for you, there's the opensource variant called "Mono". Mono simulates the .NET framework on Unix based systems.

If you downloaded and unpacked Dyrt in a folder named Dyrt in your home directory than both on Mac and Linux you should (once you installed Mono) just open the terminal and type:
~~~shell
cd ~
cd Dyrt
mono Dyrt.NET.exe
~~~

I cannot guarantee that this works, though. When I wrote this, I couldn't check this.
Mac users should be aware that as of Mojave the required OpenGL has been deprecated, and this game cannot run without it!
For the time being I cannot give technical support for Mac and Linux.

# Can I load my original Dyrt savegames in this game?

No! The technical differences between the two games are simply too great.


