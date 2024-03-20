//
//  TabBarView.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 19/3/2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        VStack {
            TabView {
                EduAppsView()
                    .tabItem {
                        Label( "Apps", systemImage: "apple.terminal.on.rectangle" )
                    }
            }
        }
    }
}

#Preview {
    TabBarView()
}
