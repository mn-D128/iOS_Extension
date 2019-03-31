//
//  PHPhotoLibrary+Base.swift
//  Extension
//
//  Created by mn(D128) on 2018/07/01.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import Photos

extension PHPhotoLibrary {
    
    class func requestAuthorizationIfNeeded(_ handler: @escaping (Bool) -> Void) {
        let status: PHAuthorizationStatus = PHPhotoLibrary.authorizationStatus()
        switch status {
        // 未実施
        case PHAuthorizationStatus.notDetermined:
            let requestHandler: (PHAuthorizationStatus) -> Void = { (status: PHAuthorizationStatus) in
                DispatchQueue.main.async {
                    let result: Bool = status == PHAuthorizationStatus.authorized
                    handler(result)
                }
            }
            
            PHPhotoLibrary.requestAuthorization(requestHandler)
            
        // 機能制限
        case PHAuthorizationStatus.restricted:
            handler(false)
            
        // 不許可
        case PHAuthorizationStatus.denied:
            handler(false)
            
        // 許可
        case PHAuthorizationStatus.authorized:
            handler(true)

        @unknown default:
            break
        }
    }
    
}
