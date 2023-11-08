//
//  ListingView.swift
//  AirbnbSwiftUI
//
//  Created by Nalinda Wickramarathna on 2023-11-06.
//

import SwiftUI

struct ListingItemView: View {
    
    let images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5",
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            //Images
            TabView() {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            //Listing detail
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("Colombo, Sri Lanka.")
                        .fontWeight(.semibold)
                    Text("17 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack {
                        Text("$345")
                            .fontWeight(.semibold)
                        Text("per night")
                    }
                }
                
                Spacer()
                
                //ratings
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
