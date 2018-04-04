//
//  ViewController.swift
//  CompactDeviceInfo
//
//  Created by Aleem Razzaq on 29/03/2018.
//  Copyright © 2018 Aleem. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if ARCompactDeviceInfo.shared.deviceSupportSecureEnclave() {
            print("your device has secure enclave")
        } else {
            print("your device doesn't has secure enclave")
        }
        
        if ARCompactDeviceInfo.shared.deviceSupportFaceID() {
            print("your device support face id")
        } else {
            print("your device doesn't support face id")
        }
        
        if ARCompactDeviceInfo.shared.deviceSupportTouchID() {
            print("your device support touch id")
        } else {
            print("your device doesn't support touch id")
        }
        switch ARCompactDeviceInfo.shared.deviceVersion() {
        case .iPhoneX:
            print("you've iPhoneX, love this device!!")
            break
        case .iPhone8:
            print("you've iPhone8")
            break
        case .iPhone8Plus:
            print("you've iPhone8Plus")
            break
        case .iPhone7:
            print("you've iPhone7")
            break
        case .iPhone7Plus:
            print("you've iPhone7Plus")
        case .iPhone6:
            print("you've iPhone6")
        case .iPhone6Plus:
            print("you've iPhone6Plus")
            break
        case .iPadPro9Dot7Inch:
            print("you've iPadPro9Dot7Inch")
        case .iPadPro10Dot5Inch:
            print("you've iPadPro10Dot5Inch")
        case .iPadPro12Dot9Inch:
            print("you've iPadPro12Dot9Inch")
            break
        default:
            print("get some phone")
        }
        
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
        
        if(ARCompactDeviceInfo.shared.versionGreaterThanOrEqual(to: "9")) {
            print("Device is on above iOS 9")
        }
        if(ARCompactDeviceInfo.shared.isZoomed()) {
            print("Device is in Zoom Mode")
        }
        
        print("Device Name is :" + (ARCompactDeviceInfo.shared.deviceNameString())!)
        
    }
    
    
    @IBAction func pushToObjectiveCController(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewControllerObjectiveC")
        present(vc, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

