//
//  HomeViewModel.swift
//  15-swift-crypto
//
//  Created by Liu Ziyi on 31/8/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h&locale=en"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(response.statusCode)")
            }
            
            guard let data = data else { return }
            let dataAsString = String(data: data, encoding: .utf8)
//            print("DEBUG: Data \(dataAsString)")
            
        }
        .resume()
        
    }
    
}
