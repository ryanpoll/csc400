# csc400

1) Download Visual Studio Code from https://code.visualstudio.com/

2) Download Flutter from https://flutter.dev/

3) To test the application on a mobile android emulator, download Android Studio from https://developer.android.com/studio

4) In Visual Studio Code, download the following extensions:
	1) Flutter - will assist in running the Flutter application through Visual Studio Code
	2) Android iOs Emulator - will allow you to connect the Android emulator from within Visual Studio Code

5) Inside Visual Studio Code, in the terminal clone the Github repository by running the command:

	$ git clone https:/github.com/ryanpoll/csc400.git

6) Download the necessary Flutter packages within the csc400 folder by running the command:

	flutter packages get
  
7) Move all the images from the images folder we submitted in the Project submission into the images folder in the csc400 project you cloned.

8) Open Android Studio and create a mobile emulator by following the steps:
	1) Click More Actions > Virtual Device Manager
	2) In the Device Manager screen, click Create Device
	3) Within the Virtual Device Configuration screen, sorts the phones by the Play Store column, to ensure that the device you choose has Google Play Store on it.
	4) Once you choose a phone, it will ask you to select a system image, we used R.
	5) Click Next and then Finish.
	
	You can also find steps here https://www.kindacode.com/article/how-to-create-a-new-android-emulator/.

9) Go back to Visual Studio code and at the bottom right of the window, select the device you would like to run the application on. The mobile emulator you created should appear.

10) After your phone launches, make sure you are inside the main file and run without debugging from the Visual Studio code Run menu.


	


To download application on iPhone, you can follow these steps:

1) Connect your iPhone to your computer using USB cable

2) Open Xcode on your computer

3) In Xcode, click on "Window" from the top menu and select "Devices and Simulators." 

4) In the Devices and Simulators window, select your iPhone from the list on the left-hand side.

5) Click on the "Install App" button in the bottom-right corner of the window.

6) Navigate to the location where your Flutter app's iOS build file is located (usually in the "ios" folder of your app's project directory).

7) Select the iOS build file and click "Open."

8) The app should now be installed on your iPhone.

Note: Before installing the app on your iPhone, you may need to have an Apple Developer account and have your device registered as a test device. If you don't have a developer account or are not sure if your device is registered, you can refer to Apple's documentation for more information.




 
