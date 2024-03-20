//
//  ContentView.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 19/3/2024.
//


import SwiftUI

struct ContentView: View {
    @State private var results: [Results] = []
    @State private var isLoading = false

    var body: some View {
        NavigationView {
            VStack {
                if isLoading {
                    ProgressView()
                } else if results.isEmpty {
                    Text("No results found")
                        .onAppear(perform: fetchApps)
                } else {
                    AppListView(results: results)
                }
            }

            .onAppear(perform: fetchApps)
        }
    }

    func fetchApps() {
        isLoading = true
        // Pass an array of app IDs as individual strings
        let appIDs = ["653517540", "480883488", "1020339980", "1194394388", "756972930", "1445871976", "1131203560", "1257834464", "1235292051", "977381005"]
        AppFetcher.shared.fetchApps(appIDs: appIDs) { fetchedResults in
            DispatchQueue.main.async {
                isLoading = false
                if let fetchedResults = fetchedResults {
                    self.results = fetchedResults
                    print("Fetched \(fetchedResults.count) results")
                } else {
                    print("Failed to fetch results")
                }
            }
        }
    }
}
