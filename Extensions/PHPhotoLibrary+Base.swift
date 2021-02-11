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
        let status: PHAuthorizationStatus
        if #available(iOS 14.0, *) {
            status = PHPhotoLibrary.authorizationStatus(for: PHAccessLevel.readWrite)
        } else {
            status = PHPhotoLibrary.authorizationStatus()
        }
        switch status {
        // 未実施
        case PHAuthorizationStatus.notDetermined:
            let requestHandler: (PHAuthorizationStatus) -> Void = { (status: PHAuthorizationStatus) in
                DispatchQueue.main.async {
                    switch status {
                    case PHAuthorizationStatus.notDetermined, PHAuthorizationStatus.restricted, PHAuthorizationStatus.denied:
                        handler(false)
                    case PHAuthorizationStatus.authorized, PHAuthorizationStatus.limited:
                        handler(true)
                    @unknown default:
                        break
                    }
                }
            }
            
            if #available(iOS 14.0, *) {
                PHPhotoLibrary.requestAuthorization(for: PHAccessLevel.readWrite, handler: requestHandler)
            } else {
                PHPhotoLibrary.requestAuthorization(requestHandler)
            }
            
        // 機能制限
        case PHAuthorizationStatus.restricted:
            handler(false)
            
        // 不許可
        case PHAuthorizationStatus.denied:
            handler(false)
            
        // 許可
        case PHAuthorizationStatus.authorized:
            handler(true)
            
        // 写真選択
        case PHAuthorizationStatus.limited:
            handler(true)

        @unknown default:
            break
        }
    }
    
}
