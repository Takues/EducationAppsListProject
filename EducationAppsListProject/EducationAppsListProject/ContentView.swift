//
//  ContentView.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 19/3/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                   AppListView()
                       .navigationBarTitle("Apps")
               }
    }
}

#Preview {
    ContentView()
}
