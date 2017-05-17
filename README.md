### Project: Txtris
###### Description: Play Tetris (the best game of all time) via SMS with your friends.

---

### Download & Run: 
1. Download the repo `git clone https://github.com/11/Txtris.git`
2. [Download ngrok](https://ngrok.com/download)
3. Create a free [Twilio account](https://www.twilio.com/try-twilio)
4. Run ngrok with `./ngrok http 8080`
5. Configure twilio's SMS webhook within your twilio dashboard to be the generated ngrok's forwarding address.

Example: `<forwarding address>/sms` [(Link to tutorial)](https://www.twilio.com/blog/2017/03/building-python-web-apps-with-flask.html)
6. In another terminal instance, run the python server with `python3 server.py` 
7. Launch your emulator and Tetris rom file
8. Load the lua script in your emulator
10. and enjoy :smiley:

---

### List of Emulators that support Lua Scripting
1. <b>Linux:</b> [FCEUX](https://apps.ubuntu.com/cat/applications/oneiric/fceux/)
2. <b>Windows:</b> [VisualBoyAdvance](https://sourceforge.net/projects/vbam/)
3. <b>Mac:</b> [DeSmuME](http://desmume.org/)

---

### Screenshots
