# WORKOVER
Final Year Computing Individual Project

## Read Me File

### Download
Download the APK for running on Android directly.

### Development Environment Installations

#### For MacOS
1. **Xcode Installation**:
   - Download from: [Xcode Website](https://developer.apple.com/xcode/) or install Xcode via the App Store.
   - Once installed, run (in terminal):

     ```
     sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
     sudo xcodebuild -runFirstLaunch
     ```

2. **Cocoapods Installation**:
   - Using Homebrew (recommended): `brew install cocoapods`
     OR
   - Using gem: `sudo gem install cocoapods`
   - Once installed, run (in terminal):

     ```
     sudo sh -c 'xcode-select -s /Applications/Xcode.app/Contents/Developer && xcodebuild -runFirstLaunch'
     sudo xcodebuild -license
     xcodebuild -downloadPlatform iOS
     open -a Simulator
     ```

3. **Flutter Setup**:
   - In the terminal, navigate to your project directory and run:

     ```
     flutter doctor
     flutter run
     ```

4. **Download Workerover Zip File**:
   - Download the `workerover.zip` file for development purposes.
