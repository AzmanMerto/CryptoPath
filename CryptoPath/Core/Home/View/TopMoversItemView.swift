//
//  TopMoversItemView.swift
//  CryptoPath
//
//  Created by NomoteteS on 21.12.2022.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            // Image
            KFImage(URL(string: (coin.image)))
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundColor(.orange)
                .padding(.bottom,8)
            
            // Coin Info
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .fontWeight(.bold)
                
                Text((coin.currentPrice.toCurrency()))
                    .foregroundColor(.gray)
                
            }
            .font(.caption)
            
            // Coin Percent Change
            Text((coin.priceChangePercentage24H.toPercentString()))
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .background(Color("BackgroundColor"))
        .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.systemGray4),lineWidth: 2)
            )
    }
}
