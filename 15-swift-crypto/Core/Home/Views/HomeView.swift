//
//  HomeView.swift
//  15-swift-crypto
//
//  Created by Liu Ziyi on 29/8/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // Top Movers View
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // All Coins View
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
