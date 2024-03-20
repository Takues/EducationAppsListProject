//
//  AppListView.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 19/3/2024.
//
import Foundation
import SwiftUI

struct AppListView: View {
    let results: [Results]

    var body: some View {
        print("AppListView body called") // Print statement to check if body is called

        return NavigationView {
            List(results, id: \.trackID) { result in
                NavigationLink(destination: AppsDetailView(app: result)) {
                    VStack(alignment: .leading) {
                        Text(result.trackName)
                            .font(.headline)
                        Text(result.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(2)
                    }
                }
            }
            .navigationTitle("Apps")
        }
    }
}

struct AppListView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleResult = Results(isGameCenterEnabled: false, supportedDevices: [], advisories: [], features: [], screenshotUrls: [], appletvScreenshotUrls: [], ipadScreenshotUrls: [], artworkUrl60: "", artworkUrl512: "", artworkUrl100: "", artistViewURL: "", kind: .software, minimumOSVersion: "", releaseNotes: "", artistID: 0, artistName: "", genres: [], price: 0, description: "", genreIDS: [], trackID: 0, trackName: "", primaryGenreName: .education, primaryGenreID: 0, bundleID: "", currentVersionReleaseDate: .now, isVppDeviceBasedLicensingEnabled: false, sellerName: "", releaseDate: .now, currency: .usd, averageUserRatingForCurrentVersion: 0.0, averageUserRating: 0.0, trackCensoredName: "", languageCodesISO2A: [], fileSizeBytes: "", sellerURL: "", formattedPrice: .free, contentAdvisoryRating: .the4, userRatingCountForCurrentVersion: 0, trackViewURL: "", trackContentRating: .the12, version: "", wrapperType: .software, userRatingCount: 0)


    }
}
