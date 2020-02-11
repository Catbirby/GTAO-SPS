# GTAO-SPS (Grand Theft Auto Online - Solo Public Session)
A simple powershell script that suspends the GTA process forcing you into a solo public online session

## Before you begin
- You will need to download and extract the [PSTools](https://docs.microsoft.com/en-us/sysinternals/downloads/pstools)

Optional Package
- Git

## Installation & Running
1. clone or download the repository from github 
2. Extract the PSTools folder to the root of the directory
![Folder structure](https://i.imgur.com/yMTbg0n.png)
3. Open Powershell as Administrator and type `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned` This will change a setting to allow you to run the script on your machine
4. Navigate to the GTAO-SP folder using `cd` commands or open it in explorer and click "file" at the top left then "Open Windows Powershell" (this does not need to run as administrator)
5. While you are in a public GTA Online session type `./SPS.ps1` into the powershell window and press enter **Your game will freeze for about 8 seconds and you may not be able to click back inot the window, this is normal. Ending the script early will keep the game suspended**
9. Once the game has resumed and you click back into the window you should be in your own Public session by yourself. 