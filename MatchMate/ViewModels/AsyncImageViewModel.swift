//
//  AsyncImageViewModel.swift
//  ShaadiDashboard
//
//  Created by Aditya Patole on 11/01/25.
//

import Foundation

class AsyncImageViewModel {
    let imageAssest: String
    let placeholderImage: String
    
    init(imageAssest: String, placeholderImage: String = "person.fill") {
        self.imageAssest = imageAssest
        self.placeholderImage = placeholderImage
    }
    
    func checkToDownloadImage() -> Bool {
        if imageAssest.contains("https") || imageAssest.contains("http") {
            return true
        }
        return false
    }
}
