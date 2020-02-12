# GTAO-SPS (Grand Theft Auto Online - Solo Public Session)
A simple powershell script that suspends the GTA process forcing you into a solo public online session

## Before you begin
- You will need to download and extract [PSTools](https://docs.microsoft.com/en-us/sysinternals/downloads/pstools)

## Installation & Running
1. clone or download the repository from github 
2. Extract the PSTools folder to the root of the directory
![Folder structure](https://i.imgur.com/yMTbg0n.png)
3. Open Powershell as Administrator and type `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned` This will change a setting to allow you to run the script on your machine
4. Navigate to the GTAO-SP folder using `cd` commands or open it in explorer and click "file" at the top left then "Open Windows Powershell" (this does not need to run as administrator)
5. While you are in a public GTA Online session type `./SPS.ps1` into the powershell window and press enter **Your game will freeze for about 8 seconds and you may not be able to click back into the window, this is normal. Ending the script early will keep the game suspended**
9. Once the game has resumed and you click back into the window you should be in your own Public session by yourself. 

## Additional Notes
- If you accidentaly ended the script early you can navigate to the PSTools folder and open powershell then type `.\pssuspend.exe gta5.exe -r` and this will resume the process
- This just streamlines the long used method of unplugging your ethernet cable for 5 seconds or interruptings GTA's network access using Windows' resmon utility.
- I hold no resposibility for any issues you experience while using this including being banned from GTA:O
- This script works really well in tandem with applications that can call powershell files without you ever having to leave the game, for example [Touch Portal](https://www.touch-portal.com/)
## License
This project is licensed under the GNU-GPL License. See the [license](https://github.com/Catbirby/GTAO-SPS/blob/master/LICENSE) file for details.

