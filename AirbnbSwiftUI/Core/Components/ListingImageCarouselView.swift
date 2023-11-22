//
//  ListingImageCarouselView.swift
//  AirbnbSwiftUI
//
//  Created by Nalinda Wickramarathna on 2023-11-08.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    let images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5",
    ]
    
    var body: some View {
        TabView() {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
