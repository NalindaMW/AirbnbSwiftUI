//
//  ListingView.swift
//  AirbnbSwiftUI
//
//  Created by Nalinda Wickramarathna on 2023-11-06.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            //Images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //Listing detail
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("Colombo, Sri Lanka.")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("17 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack {
                        Text("$345")
                            .fontWeight(.semibold)
                        Text("per night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                //ratings
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
