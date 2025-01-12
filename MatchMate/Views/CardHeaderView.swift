//
//  CardHeaderView.swift
//  ShaadiDashboard
//
//  Created by Aditya Patole on 11/01/25.
//

import SwiftUI

struct CardHeaderView: View {
    var body: some View {
        VStack {
            CardHeaderTopSection()
                .padding(.horizontal, 16)
                .background(.shaadiRed)
                .foregroundStyle(.white)
        }
    }
}

struct CardHeaderTopSection: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                    Text("MatchMate")
                        .font(.system(size: 24, weight: .heavy))
                }
                .padding(.vertical)
            }
            Spacer()
        }
    }
}

#Preview {
    CardHeaderView()
}
