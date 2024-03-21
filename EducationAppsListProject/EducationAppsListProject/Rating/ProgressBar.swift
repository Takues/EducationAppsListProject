//
//  ProgressBar.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 21/3/2024.
//

import SwiftUI


struct ProgressBar: View {
    var value: CGFloat

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: 10)
                    .opacity(0.3)
                    .foregroundColor(Color.gray)
                    .cornerRadius(5)

                Rectangle()
                    .frame(width: min(CGFloat(self.value) * geometry.size.width / 100, geometry.size.width), height: 12)
                    .foregroundColor(Color.blue)
                    .animation(.linear)
                    .cornerRadius(5)
            }
        }
    }
}

#Preview {
    ProgressBar(value: 50)
}
