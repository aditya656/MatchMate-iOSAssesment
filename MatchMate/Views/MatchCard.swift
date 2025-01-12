//
//  MatchCard.swift
//  ShaadiDashboard
//
//  Created by Aditya Patole on 11/01/25.
//

import SwiftUI

struct MatchCard: View {
    @Binding var model: ContentModel
    @Environment(\.managedObjectContext) var viewContext
    
    var body: some View {
        VStack(spacing: 16) {
            MatchCardDescription(model: $model)
        }
        .frame(width: UIScreen.main.bounds.width - 48, height: UIScreen.main.bounds.height / 2.8)
        .padding()
    }
}

//#Preview {
//    MatchCard()
//}
