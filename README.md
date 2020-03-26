# Build image 

```
docker build -t gomobilebuilder .
```

# Build an apk

```
git clone https://github.com/golang/mobile.git
docker run --rm -ti \
    -v $(pwd)/mobile:/app \
    gomobilebuilder \
    build -target=android  ./example/flappy/
```

# Install the application in your phone
```
adb install mobile/flappy.apk
```

# Setup adb connection

Enable  developer mode on mobile

* Launch the Settings Application
* Scroll Down and Tap on About Phone(or About Device)
* Locate the Build Number Section
* Tap on the Build Number Option 7 Times
* Go Back to the Main Settings Page
* Scroll Down and Tap on Developer Options
* Go to Settings>Developer Options>USB Debugging. Tap the USB Debugging checkbox.

Enable adb wifi connection
* Plug in phone with usb
* select camera/PTP
* run in console:
```
    adb tcpip 5555
```
* unplug usb

Connect adb via wifi
* run in console: 
```
    adb connect 192.168.1.101:5555
```

## More
[https://github.com/golang/go/wiki/Mobile](https://github.com/golang/go/wiki/Mobile)
