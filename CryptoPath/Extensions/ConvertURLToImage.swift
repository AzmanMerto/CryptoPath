//
//  ConvertURLToImage.swift
//  CryptoPath
//
//  Created by NomoteteS on 21.12.2022.
//

import Foundation
import SwiftUI

extension String {
    func ConvertToImage() -> UIImage {
        
        do {
            guard let url = URL(string: self) else {
                
                
                return UIImage()
            }
            
            let data: Data = try Data(contentsOf: url )
            
            return UIImage(data: data) ?? UIImage()
        } catch {
            //
        }
        return UIImage()
    }
}

