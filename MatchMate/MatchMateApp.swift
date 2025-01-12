//
//  MatchMateApp.swift
//  MatchMate
//
//  Created by Aditya Patole on 11/01/25.
//

import SwiftUI

@main
struct MatchMateApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var viewModel = ContentViewModel(networkManager: NetworkManager())
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .onAppear {
                    InternetConnectionManager.shared.startNetworkReachabilityObserver()
                }
        }
        .onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .background:
                viewModel.saveContent()
            case .inactive:
                viewModel.saveContent()
            default:
                break
            }
        }
    }
}
