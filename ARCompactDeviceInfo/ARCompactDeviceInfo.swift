//
//  CompactDeviceAttributes.swift
//  CompactDeviceInfo
//
//  Created by Aleem Razzaq on 29/03/2018.
//  Copyright © 2018 Aleem. All rights reserved.
//

import UIKit
import LocalAuthentication

@objcMembers
open class ARCompactDeviceInfo: NSObject {
    
    //MARK:- Variable declerations
    static let shared = ARCompactDeviceInfo()
    let deviceNamesByCode : [String: Int]
    
    //MARK: Life Cycle Methods
    override init() {
        deviceNamesByCode = ["iPhone3,1":                               DeviceVersion.iPhone4.rawValue,
                             "iPhone3,2": DeviceVersion.iPhone4.rawValue,
                             "iPhone3,3": DeviceVersion.iPhone4.rawValue,
                             "iPhone4,1": DeviceVersion.iPhone4S.rawValue,
                             "iPhone4,2": DeviceVersion.iPhone4S.rawValue,
                             "iPhone4,3": DeviceVersion.iPhone4S.rawValue,
                             "iPhone5,1": DeviceVersion.iPhone5.rawValue,
                             "iPhone5,2": DeviceVersion.iPhone5.rawValue,
                             "iPhone5,3": DeviceVersion.iPhone5C.rawValue,
                             "iPhone5,4": DeviceVersion.iPhone5C.rawValue,
                             "iPhone6,1": DeviceVersion.iPhone5S.rawValue,
                             "iPhone6,2": DeviceVersion.iPhone5S.rawValue,
                             "iPhone7,2": DeviceVersion.iPhone6.rawValue,
                             "iPhone7,1": DeviceVersion.iPhone6Plus.rawValue,
                             "iPhone8,1": DeviceVersion.iPhone6S.rawValue,
                             "iPhone8,2": DeviceVersion.iPhone6SPlus.rawValue,
                             "iPhone8,4": DeviceVersion.iPhoneSE.rawValue,
                             "iPhone9,1": DeviceVersion.iPhone7.rawValue,
                             "iPhone9,3": DeviceVersion.iPhone7.rawValue,
                             "iPhone9,2": DeviceVersion.iPhone7Plus.rawValue,
                             "iPhone9,4": DeviceVersion.iPhone7Plus.rawValue,
                             "iPhone10,1": DeviceVersion.iPhone8.rawValue,
                             "iPhone10,4": DeviceVersion.iPhone8.rawValue,
                             "iPhone10,2": DeviceVersion.iPhone8Plus.rawValue,
                             "iPhone10,5": DeviceVersion.iPhone8Plus.rawValue,
                             "iPhone10,3": DeviceVersion.iPhoneX.rawValue,
                             "iPhone10,6": DeviceVersion.iPhoneX.rawValue,
                             "iPhone11,2": DeviceVersion.iPhoneXS.rawValue,
                             "iPhone11,4": DeviceVersion.iPhoneXSMaxChina.rawValue,
                             "iPhone11,6": DeviceVersion.iPhoneXSMax.rawValue,
                             "iPhone11,8": DeviceVersion.iPhoneXR.rawValue,
                             "iPhone12,1" : DeviceVersion.iPhone11.rawValue,
                             "iPhone12,3" : DeviceVersion.iPhone11Pro.rawValue,
                             "iPhone12,5" : DeviceVersion.iPhone11ProMax.rawValue,
            
            
                             "i386": DeviceVersion.Simulator.rawValue,
                             "x86_64": DeviceVersion.Simulator.rawValue,
                             
                             "iPad1,1": DeviceVersion.iPad1.rawValue,
                             "iPad2,1": DeviceVersion.iPad2.rawValue,
                             "iPad2,2": DeviceVersion.iPad2.rawValue,
                             "iPad2,3": DeviceVersion.iPad2.rawValue,
                             "iPad2,4": DeviceVersion.iPad2.rawValue,
                             "iPad2,5": DeviceVersion.iPadMini.rawValue,
                             "iPad2,6": DeviceVersion.iPadMini.rawValue,
                             "iPad2,7": DeviceVersion.iPadMini.rawValue,
                             "iPad3,1": DeviceVersion.iPad3.rawValue,
                             "iPad3,2": DeviceVersion.iPad3.rawValue,
                             "iPad3,3": DeviceVersion.iPad3.rawValue,
                             "iPad3,4": DeviceVersion.iPad4.rawValue,
                             "iPad3,5": DeviceVersion.iPad4.rawValue,
                             "iPad3,6": DeviceVersion.iPad4.rawValue,
                             "iPad4,1": DeviceVersion.iPadAir.rawValue,
                             "iPad4,2": DeviceVersion.iPadAir.rawValue,
                             "iPad4,3": DeviceVersion.iPadAir.rawValue,
                             "iPad4,4": DeviceVersion.iPadMini2.rawValue,
                             "iPad4,5": DeviceVersion.iPadMini2.rawValue,
                             "iPad4,6": DeviceVersion.iPadMini2.rawValue,
                             "iPad4,7": DeviceVersion.iPadMini3.rawValue,
                             "iPad4,8": DeviceVersion.iPadMini3.rawValue,
                             "iPad4,9": DeviceVersion.iPadMini3.rawValue,
                             "iPad5,1": DeviceVersion.iPadMini4.rawValue,
                             "iPad5,2": DeviceVersion.iPadMini4.rawValue,
                             "iPad5,3": DeviceVersion.iPadAir2.rawValue,
                             "iPad5,4": DeviceVersion.iPadAir2.rawValue,
                             "iPad6,3": DeviceVersion.iPadPro9Dot7Inch.rawValue,
                             "iPad6,4": DeviceVersion.iPadPro9Dot7Inch.rawValue,
                             "iPad6,7": DeviceVersion.iPadPro12Dot9Inch.rawValue,
                             "iPad6,8": DeviceVersion.iPadPro12Dot9Inch.rawValue,
                             "iPad6,11": DeviceVersion.iPad5.rawValue,
                             "iPad6,12": DeviceVersion.iPad5.rawValue,
                             "iPad7,1": DeviceVersion.iPadPro12Dot9Inch2Gen.rawValue,
                             "iPad7,2": DeviceVersion.iPadPro12Dot9Inch2Gen.rawValue,
                             "iPad7,3": DeviceVersion.iPadPro10Dot5Inch.rawValue,
                             "iPad7,4": DeviceVersion.iPadPro10Dot5Inch.rawValue,
                             "iPad8,1": DeviceVersion.iPadPro11Inch.rawValue,
                             "iPad8,2": DeviceVersion.iPadPro11Inch.rawValue,
                             "iPad8,3": DeviceVersion.iPadPro11Inch.rawValue,
                             "iPad8,4": DeviceVersion.iPadPro11Inch.rawValue,
                             "iPad8,5": DeviceVersion.iPadPro12Dot93rdGenInch.rawValue,
                             "iPad8,6": DeviceVersion.iPadPro12Dot93rdGenInch.rawValue,
                             "iPad8,7": DeviceVersion.iPadPro12Dot93rdGenInch.rawValue,
                             "iPad8,8": DeviceVersion.iPadPro12Dot93rdGenInch.rawValue,
                             "iPad11,1":DeviceVersion.iPadMini5.rawValue,
                             "iPad11,2":DeviceVersion.iPadMini5.rawValue,
                             "iPad11,3" :DeviceVersion.iPadAir3.rawValue,
                             "iPad11,4" :DeviceVersion.iPadAir3.rawValue,
                             
                             "iPod1,1": DeviceVersion.iPodTouch1Gen.rawValue,
                             "iPod2,1": DeviceVersion.iPodTouch2Gen.rawValue,
                             "iPod3,1": DeviceVersion.iPodTouch3Gen.rawValue,
                             "iPod4,1": DeviceVersion.iPodTouch4Gen.rawValue,
                             "iPod5,1": DeviceVersion.iPodTouch5Gen.rawValue,
                             "iPod7,1": DeviceVersion.iPodTouch6Gen.rawValue,
                             "iPod9,1": DeviceVersion.iPodTouch7Gen.rawValue]
    }
    
    //MARK: Methods
    func deviceSupportFaceID () -> Bool {
        //if iOS 11 doesn't exist then FaceID doesn't either
        if(ARCompactDeviceInfo.shared.versionGreaterThanOrEqual(to: "11")) {
            let context = LAContext.init()
            
            var error: NSError?
            
            if context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error) {
                //As of 11.2 typeFaceID is now just faceID
                
                if #available(iOS 11.0, *) {
                    if (context.biometryType == .faceID) {
                        return true
                    }
                } else {
                    // Face ID isn't available before iOS 11
                       return false
                }
            }
        }
        
        return false
    }
    
    func deviceSupportTouchID () -> Bool {
        
        let context = LAContext.init()
        
        var error: NSError?
        
        if context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            //As of 11.2 typeFaceID is now just faceID
            if #available(iOS 11.0, *) {
                if (context.biometryType == .touchID) {
                    return true
                } else {
                    return false
                }
            } else {
                // It support becuase Touch ID becuase it passed canEvaluatePolicy check and also FaceID isn't available before iOS 11
                return true
            }
        }
        
        return false
    }
    
    
    func deviceSupportSecureEnclave() -> Bool {
        var isSupported : Bool = true
        let deviceVersion = ARCompactDeviceInfo.shared.deviceVersion()
        if(ARCompactDeviceInfo.shared.versionGreaterThanOrEqual(to: "9")) {
            switch deviceVersion {
            case .iPhone4 :
                isSupported = false
                break
                
            case .iPhone4S:
                isSupported = false
                break
                
            case .iPhone5:
                isSupported = false
                break
                
            case .iPhone5C:
                isSupported = false
                break
                
            case .iPad1:
                isSupported = false
                break
                
            case .iPad2:
                isSupported = false
                break
                
            case .iPad3:
                isSupported = false
                break
                
            case .iPad4:
                isSupported = false
                break
                
            case .iPadAir:
                isSupported = false
                break
                
            case .iPadMini:
                isSupported = false
                break
                
            case .iPadMini2:
                isSupported = false
                break
                
            case .iPodTouch1Gen:
                isSupported = false
                break
                
            case .iPodTouch2Gen:
                isSupported = false
                break
                
            case .iPodTouch3Gen:
                isSupported = false
                break
                
            case .iPodTouch4Gen:
                isSupported = false
                break
                
            case .iPodTouch5Gen:
                isSupported = false
                break
                
            case .iPodTouch6Gen:
                isSupported = false
                break
                
            case .Simulator:
                isSupported = false
                break
                
            default:
                isSupported = true
                break
            }
            
        } else {
            isSupported = false
        }
        return isSupported
    }
    public func deviceVersion() -> DeviceVersion {
        var systemInfo = utsname()
        uname(&systemInfo)
        
        let modelCode = withUnsafePointer(to: &systemInfo.machine) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) {
                ptr in String.init(validatingUTF8: ptr)
            }
        }
        
        let version:DeviceVersion = DeviceVersion(rawValue: ARCompactDeviceInfo.shared.deviceNamesByCode[modelCode ?? "-111"] ?? -111) ?? DeviceVersion.UnknownDevice
        return version
    }
    
    public func resolutionSize() -> DeviceSize {
        var screenHeight: CGFloat = 0
        if ARCompactDeviceInfo.shared.versionGreaterThanOrEqual(to: "8") {
            screenHeight = max(UIScreen.main.bounds.size.height, UIScreen.main.bounds.size.width)
        } else {
            screenHeight = UIScreen.main.bounds.size.height
        }
        if screenHeight == 480 {
            return .Screen3Dot5inch
        } else if screenHeight == 568 {
            return .Screen4inch
        } else if screenHeight == 667 {
            return .Screen4Dot7inch
        } else if screenHeight == 736 {
            return .Screen5Dot5inch
        } else if screenHeight == 812 {
            return .Screen5Dot8inch
        } else {
            return .UnknownSize
        }
    }
    
    public func deviceSize() ->DeviceSize {
        var deviceSize: DeviceSize = self.resolutionSize()
        if self.isZoomed() {
            if deviceSize == .Screen4inch {
                deviceSize = .Screen4Dot7inch
            } else if deviceSize == .Screen4Dot7inch {
                deviceSize = .Screen5Dot5inch
            }
        }
        return deviceSize
    }
    
    func deviceSizeName(_ deviceSize: DeviceSize) -> String? {
        
        return [.UnknownSize: "Unknown Size",
                .Screen3Dot5inch: "3.5 inch",
                .Screen4inch: "4 inch",
                .Screen4Dot7inch: "4.7 inch",
                .Screen5Dot5inch: "5.5 inch",
                .Screen5Dot8inch: "5.8 inch"][deviceSize]
    }
    
    func deviceNameString() -> String? {
        let deviceVersionValue = ARCompactDeviceInfo.shared.deviceVersion();
        let deviceName = ARCompactDeviceInfo.shared.deviceName(deviceVersionValue)
        return deviceName;
        //return ARCompactDeviceInfo.shared.deviceName(ARCompactDeviceInfo.shared.deviceVersion())
    }
    
    func deviceName(_ deviceVersion: DeviceVersion) -> String? {
        return [.iPhone4: "iPhone 4",
                .iPhone4S: "iPhone 4S",
                .iPhone5: "iPhone 5",
                .iPhone5C: "iPhone 5C",
                .iPhone5S: "iPhone 5S",
                .iPhone6: "iPhone 6",
                .iPhone6Plus: "iPhone 6 Plus",
                .iPhone6S: "iPhone 6S",
                .iPhone6SPlus: "iPhone 6S Plus",
                .iPhone7: "iPhone 7",
                .iPhone7Plus: "iPhone 7 Plus",
                .iPhone8: "iPhone 8",
                .iPhone8Plus: "iPhone 8 Plus",
                .iPhoneX: "iPhone X",
                .iPhoneSE: "iPhone SE",
                .iPhoneXS: "iPhone XS",
                .iPhoneXSMax: "iPhone XS Max",
                .iPhoneXSMaxChina: "iPhone XS Max China",
                .iPhoneXR: "iPhone XR",
                .iPhone11: "iPhone 11",
                .iPhone11Pro: "iPhone 11 Pro",
                .iPhone11ProMax: "iPhone 11 Pro Max",
                
                .iPad1: "iPad 1",
                .iPad2: "iPad 2",
                .iPadMini: "iPad Mini",
                .iPad3: "iPad 3",
                .iPad4: "iPad 4",
                .iPadAir: "iPad Air",
                .iPadMini2: "iPad Mini 2",
                .iPadAir2: "iPad Air 2",
                .iPadMini3: "iPad Mini 3",
                .iPadMini4: "iPad Mini 4",
                .iPadPro9Dot7Inch: "iPad Pro 9.7 inch",
                .iPadPro12Dot9Inch: "iPad Pro 12.9 inch",
                .iPad5: "iPad 5",
                .iPadPro10Dot5Inch: "iPad Pro 10.5 inch",
                .iPadPro12Dot9Inch2Gen: "iPad Pro 12.9 inch",
                .iPadPro11Inch: "iPad Pro 11",
                .iPadPro12Dot93rdGenInch: "iPad Pro 12.9",
                .iPadMini5:"iPad Mini 5",
                .iPadAir3: "iPad Air 3",
                
                .iPodTouch1Gen: "iPod Touch 1st Gen",
                .iPodTouch2Gen: "iPod Touch 2nd Gen",
                .iPodTouch3Gen: "iPod Touch 3rd Gen",
                .iPodTouch4Gen: "iPod Touch 4th Gen",
                .iPodTouch5Gen: "iPod Touch 5th Gen",
                .iPodTouch6Gen: "iPod Touch 6th Gen",
                .iPodTouch7Gen: "iPod Touch 7th Gen",
                
                .Simulator: "Simulator",
                .UnknownDevice: "Unknown Device"] [deviceVersion]
    }
    
    func isZoomed() -> Bool {
        if self.resolutionSize() == .Screen4inch && UIScreen.main.nativeScale > 2 {
            return true
        } else if self.resolutionSize() == .Screen4Dot7inch && UIScreen.main.scale == 3 {
            return true
        }
        return false
    }
    
    func versionEqual(to version: String?) -> Bool {
        
        return UIDevice.current.systemVersion.compare(version!, options: .numeric, range: nil, locale: .current) == .orderedSame
    }
    func versionGreaterThan(_ version: String?) -> Bool {
        return UIDevice.current.systemVersion.compare(version!, options: .numeric, range: nil, locale: .current) == .orderedDescending
    }
    func versionGreaterThanOrEqual(to version: String?) -> Bool {
        return UIDevice.current.systemVersion.compare(version!, options: .numeric, range: nil, locale: .current) != .orderedAscending
    }
    func versionLessThan(_ version: String?) -> Bool {
        return UIDevice.current.systemVersion.compare(version!, options: .numeric, range: nil, locale: .current) == .orderedAscending
    }
    func versionLessThanOrEqual(to version: String?) -> Bool {
        return UIDevice.current.systemVersion.compare(version!, options: .numeric, range: nil, locale: .current) != .orderedDescending
    }
    
}


@objc public enum DeviceVersion : Int {
    case UnknownDevice = -111
    case Simulator = 1
    
    case iPhone4 = 3
    case iPhone4S = 4
    case iPhone5 = 5
    case iPhone5C = 6
    case iPhone5S = 7
    case iPhone6 = 8
    case iPhone6Plus = 9
    case iPhone6S = 10
    case iPhone6SPlus = 11
    case iPhone7 = 12
    case iPhone7Plus = 13
    case iPhone8 = 14
    case iPhone8Plus = 15
    case iPhoneX = 16
    case iPhoneSE = 17
    case iPhoneXS = 18
    case iPhoneXSMax = 19
    case iPhoneXSMaxChina = 20
    case iPhoneXR = 21
    case iPhone11 = 22
    case iPhone11Pro = 23
    case iPhone11ProMax = 24
    
    case iPad1 = 100
    case iPad2 = 102
    case iPadMini = 103
    case iPad3 = 104
    case iPad4 = 105
    case iPadAir = 106
    case iPadMini2 = 107
    case iPadAir2 = 108
    case iPadMini3 = 109
    case iPadMini4 = 110
    case iPadPro12Dot9Inch = 111
    case iPadPro9Dot7Inch = 112
    case iPad5 = 113
    case iPadPro12Dot9Inch2Gen = 114
    case iPadPro10Dot5Inch = 115
    case iPadPro11Inch = 116
    case iPadPro12Dot93rdGenInch = 117
    case iPadMini5 = 118
    case iPadAir3 = 119
    
    case iPodTouch1Gen = 200
    case iPodTouch2Gen = 201
    case iPodTouch3Gen = 202
    case iPodTouch4Gen = 203
    case iPodTouch5Gen = 204
    case iPodTouch6Gen = 205
    case iPodTouch7Gen = 206
}


@objc public enum DeviceSize : Int {
    case UnknownSize = 0
    case Screen3Dot5inch = 1
    case Screen4inch = 2
    case Screen4Dot7inch = 3
    case Screen5Dot5inch = 4
    case Screen5Dot8inch = 5
}

