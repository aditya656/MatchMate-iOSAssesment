//
//  MatchCardBottomView.swift
//  ShaadiDashboard
//
//  Created by Aditya Patole on 11/01/25.
//

import SwiftUI

struct MatchCardBottomView: View {
    @Binding var model: ContentModel
    
    var body: some View {
        ZStack {
            HStack {
                Button(action: {
                    withAnimation {
                        model.isAccepted = false
                    }
                }) {
                    Circle()
                        .fill()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.red)
                        .overlay(
                            Image(systemName: "xmark")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                        )
                }
                Spacer()
                
                Button(action: {
                    withAnimation {
                        model.isAccepted = true
                    }
                }) {
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.green)
                        .overlay(
                            Image(systemName: "checkmark")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                        )
                }
            }
        }
    }
}
