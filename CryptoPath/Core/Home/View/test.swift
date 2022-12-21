//
//  test.swift
//  CryptoPath
//
//  Created by NomoteteS on 21.12.2022.
//

import SwiftUI

struct test: View {
    var body: some View {
        Image(uiImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png".ConvertToImage())
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
