//
//  CoinRowView.swift
//  CryptoPath
//
//  Created by NomoteteS on 21.12.2022.
//

import SwiftUI

struct CoinRowView: View {
    let coin : Coin
    var body: some View {
        HStack{
            // Market Cap
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            // Image
            Image(uiImage: "\(coin.image)".ConvertToImage())
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // Coin Name Info
            
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading,2)
            
            // Coin Price Info
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("\(coin.priceChangePercentage24H )")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(.red)
            }
            .padding(.leading,2)
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}
//
//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}
