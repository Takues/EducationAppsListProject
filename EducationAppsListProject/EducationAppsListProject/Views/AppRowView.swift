//
//  AppRowView.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 19/3/2024.
//

import SwiftUI

struct AppRowView: View {

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 8) {
                Text("4.6")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("Instagram")
                    .font(.custom("SF Pro Display", size: 20))
                    .fontWeight(.bold)

                VStack {
                    Text("Instagram is a free, online photo-sharing application and social network platform that was acquired by Facebook in 2012.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

            }
           // Add some vertical padding to the VStack

            Divider() // Add a divider between the VStack and the Image

            Image("Instagram")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(3.0)
                .frame(width: 150, height: 150)
        }
        .padding() // Add horizontal padding to the entire HStack
    }
}

struct AppRowView_Previews: PreviewProvider {
    static var previews: some View {
        AppRowView()
            .frame(width: 380, height: 200)
            .background(Color.white)
            .previewLayout(.sizeThatFits)
    }
}
