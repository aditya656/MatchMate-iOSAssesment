//
//  InternetConnectionManager.swift
//  ShaadiDashboard
//
//  Created by Aditya Patole on 11/01/25.
//

import Foundation
import Alamofire

extension Notification.Name {
    static let networkDidChange = Notification.Name(rawValue: "kReachabilityDidChangeNotification")
}

final class InternetConnectionManager: NSObject {
    static var shared = InternetConnectionManager()
    var reachabilityManager = NetworkReachabilityManager()
    
    func startNetworkReachabilityObserver() {
        reachabilityManager?.startListening { status in
            switch status {
            case .notReachable:
                print("No internet connection.")
                NotificationCenter.default.post(name: .networkDidChange, object: "offline")
            case .reachable(.ethernetOrWiFi), .reachable(.cellular):
                print("Internet connection reachable.")
                NotificationCenter.default.post(name: .networkDidChange, object: "online")
            case .unknown:
                print("Internet connection status unknown.")
            }
        }
    }
    
    func stopNetworkReachabilityObserver() {
        reachabilityManager?.stopListening()
    }
}
