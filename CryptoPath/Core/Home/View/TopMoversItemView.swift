//
//  TopMoversItemView.swift
//  CryptoPath
//
//  Created by NomoteteS on 21.12.2022.
//

import SwiftUI

struct TopMoversItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            // Image
            Image(uiImage: "\(coin.image)".ConvertToImage())
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundColor(.orange)
                .padding(.bottom,8)
            
            // Coin Info
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .fontWeight(.bold)
                
                Text("\(coin.currentPrice)")
                    .foregroundColor(.gray)
                
            }
            .font(.caption)
            
            // Coin Percent Change
            Text("\(coin.priceChangePercentage24H)")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.systemGray4),lineWidth: 2)
            )
    }
}
