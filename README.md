# ARCompactDeviceInfo
A detail info lightweight Cocoa library for detecting current device Support for Secure Enclave, FaceID, TouchID, Device Model and Screen Size, Written in Swift but can use on both Swift and Objective C. You can check Demo project for how to use or below code for quick look to use.


UPDATE:
### iPhone 11, iPad mini 5 Generation, iPad Air 3rd Generation and iPod 7th Generation Supported

How it Works

### `Swift:`


        // check for Secure Encalve availabe
        if ARCompactDeviceInfo.shared.deviceSupportSecureEnclave() {
            print("your device has secure enclave")
        } else {
            print("your device doesn't has secure enclave")
        }
        
        // check for Face ID Support
        if ARCompactDeviceInfo.shared.deviceSupportFaceID() {
            print("your device support face id")
        } else {
            print("your device doesn't support face id")
        }
        
        // check for Touch ID Support
        if ARCompactDeviceInfo.shared.deviceSupportTouchID() {
            print("your device support touch id")
        } else {
            print("your device doesn't support touch id")
        }
        
        // Check for Device Model
        switch ARCompactDeviceInfo.shared.deviceVersion() {
        case .iPhoneX:
            print("you've iPhoneX, love this device!!")
            break
        case .iPhone8:
            print("you've iPhone8")
            break
        case .iPadPro9Dot7Inch:
            print("you've iPadPro9Dot7Inch")
        case .iPadPro12Dot9Inch:
            print("you've iPadPro12Dot9Inch")
            break
        default:
            print("get some phone")
        }
        
        // Check for Device Size
        switch ARCompactDeviceInfo.shared.deviceSize() {
        case .Screen4Dot7inch:
            print("screen size is 4.7")
        case .Screen5Dot5inch:
            print("screen size is 5.5")
        case .Screen5Dot8inch:
            print("screen size is 5.8")
        default:
            print("get some phone")
        }
        
        // Check for iOS Version
        if(ARCompactDeviceInfo.shared.versionGreaterThanOrEqual(to: "9")) {
            print("Device is on above iOS 9")
        }
        if(ARCompactDeviceInfo.shared.isZoomed()) {
            print("Device is in Zoom Mode")
        }
        
        // Check for Device Name 
        print("Device Name is :" + (ARCompactDeviceInfo.shared.deviceNameString())!)
        
        
        
### `Objective C:`

    if([[ARCompactDeviceInfo shared] deviceSupportSecureEnclave])
    {
        NSLog(@"your device has secure enclave");
    } else {
        NSLog(@"your device has secure enclave");
    }

    if ([[ARCompactDeviceInfo shared] deviceSupportFaceID]) {
        NSLog(@"your device support face id");
    } else {
        NSLog(@"your device doesn't support face id");
    }
    
    if ([[ARCompactDeviceInfo shared] deviceSupportTouchID]) {
        NSLog(@"your device support touch id");
    } else {
        NSLog(@"your device doesn't support touch id");
    }

    switch ([[ARCompactDeviceInfo shared] deviceVersion]) {
        case DeviceVersionIPhoneX:
            NSLog(@"you've iPhoneX, love this device!!");
            break;
        case DeviceVersionIPhone8:
            NSLog(@"you've iPhone8");
            break;
        case DeviceVersionIPhone6Plus:
            NSLog(@"you've iPhone6Plus");
            break;
        case DeviceVersionIPadPro9Dot7Inch:
            NSLog(@"you've iPadPro9Dot7Inch");
            break;
        case DeviceVersionIPadPro12Dot9Inch:
            NSLog(@"you've iPadPro12Dot9Inch");
            break;
    default:
            NSLog(@"get some phone");
        
    }
    
    switch ([[ARCompactDeviceInfo shared] deviceSize]){
    case DeviceSizeScreen4Dot7inch:
            NSLog(@"screen size is 4.7");
    case DeviceSizeScreen5Dot5inch:
            NSLog(@"screen size is 5.5");
    case DeviceSizeScreen5Dot8inch:
            NSLog(@"screen size is 5.8");
    default:
            NSLog(@"get some phone");
    }
    
    if([[ARCompactDeviceInfo shared] versionGreaterThanOrEqualTo:@"9.0"]) {
        NSLog(@"Device is on above iOS 9");
    }
    if([[ARCompactDeviceInfo shared] isZoomed]) {
        NSLog(@"Device is in Zoom Mode");
    }
    
    NSLog(@"Device Name is : %@", [[ARCompactDeviceInfo shared] deviceNameString]);
    
*NOTE: Inspired from SDVersion Library*: [SDVersion](https://github.com/sebyddd/SDVersion)
