//
//  RatingView.swift
//  AirbnbSwiftUI
//
//  Created by Nalinda Wickramarathna on 2023-11-08.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text("4.86")
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    RatingView()
}
