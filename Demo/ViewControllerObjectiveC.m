//
//  ViewControllerObjectiveC.m
//  CompactDeviceInfo
//
//  Created by Ascertia-ZA on 04/04/2018.
//  Copyright © 2018 Aleem. All rights reserved.
//

#import "ViewControllerObjectiveC.h"
#import <CompactDeviceInfo-Swift.h>

@implementation ViewControllerObjectiveC

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
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
        case DeviceVersionIPhone8Plus:
            NSLog(@"you've iPhone8Plus");
            break;
        case DeviceVersionIPhone7:
            NSLog(@"you've iPhone7");
            break;
        case DeviceVersionIPhone7Plus:
            NSLog(@"you've iPhone7Plus");
            break;
        case DeviceVersionIPhone6:
            NSLog(@"you've iPhone6");
            break;
        case DeviceVersionIPhone6Plus:
            NSLog(@"you've iPhone6Plus");
            break;
        case DeviceVersionIPadPro9Dot7Inch:
            NSLog(@"you've iPadPro9Dot7Inch");
            break;
        case DeviceVersionIPadPro10Dot5Inch:
            NSLog(@"you've iPadPro10Dot5Inch");
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

}
@end
