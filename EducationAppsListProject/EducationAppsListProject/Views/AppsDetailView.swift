//
//  AppsDetailView.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 20/3/2024.
//


import Foundation
import SwiftUI

struct AppsDetailView: View {
    @State private var selectedRating = 0
       @State private var loadingPercentages: [CGFloat] = [0, 0, 0, 0, 0]

    let app: Results

    var body: some View {
        print("AppDetailsView body called") // Print statement to check if body is called

        return ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // App Icon
                AsyncImage(url: URL(string: app.artworkUrl100)) { image in
                    image
                        .resizable()
                        .frame(width: 380, height: 200)
                } placeholder: {
                    ProgressView()
                }

                .cornerRadius(15)

                // Rating
                VStack {
                        HStack(spacing: 20) {
                            HStack(spacing: 0) { // Align stars horizontally
                                ForEach(0..<5) { index in
                                    Button(action: {
                                        selectedRating = index + 1
                                        updateLoadingPercentage(forIndex: index)
                                    }) {
                                        ZStack {
                                            Image(systemName: index < selectedRating ? "star.fill" : "star")
                                                .foregroundColor(index < selectedRating ? .blue : .gray)
                                        }
                                    }
                                }
                            }

                            Spacer() // Add spacer to push ProgressBar to the far right

                            VStack(spacing: 10) {
                                ForEach(loadingPercentages.indices, id: \.self) { index in
                                    ProgressBar(value: loadingPercentages[index])
                                        .frame(width: 100) // Set a fixed width for ProgressBar
                                        .cornerRadius(30)
                                        .overlay(
                                            Text("\(Int(loadingPercentages[index]))%")
                                                .foregroundColor(.black)
                                                .font(.caption)
                                        )

                                }
                            }
                        }
                        .padding()
                    }
                    .padding()
                }




                    // App Name
                    HStack {
                        Text(app.trackName)
                            .font(.title)
                            .fontWeight(.bold)
                    }

                    // App Description
                    HStack {
                        Text(app.description)
                            .font(.body)
                    }

                    // Release Notes
                    if let releaseNotes = app.releaseNotes {
                        // Handle releaseNotes if it exists
                        Text("Release Notes: \(releaseNotes)")
                            .font(.body)
                            .foregroundColor(.secondary)

                    } else {
                        // Handle case where releaseNotes is nil
                        Text("No release notes available")
                            .font(.body)
                            .foregroundColor(.secondary)
                    }

                    // Other Details (Release Date, Price, etc.)
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Release Date: \(formattedDate(app.releaseDate))")
                        Text("Price: \(app.formattedPrice)")
                        Text("Average User Rating: \(app.averageUserRating)")
                        // Add more details as needed
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                }
                .padding()
            }
    



    func updateLoadingPercentage(forIndex index: Int) {
        if index < selectedRating - 1 {
            loadingPercentages[index] = 100
        } else if index == selectedRating - 1 {
            switch selectedRating {
            case 1:
                loadingPercentages[index] = 60
            case 2:
                loadingPercentages[index] = 25
            case 3:
                loadingPercentages[index] = 10
            case 4:
                loadingPercentages[index] = 3
            case 5:
                loadingPercentages[index] = 2
            default:
                loadingPercentages[index] = 0
            }
        } else {
            loadingPercentages[index] = 0
        }
    }
}
    // Helper function to format date
    private func formattedDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        return dateFormatter.string(from: date)
    }

struct AppDetailsView_Previews: PreviewProvider {
    static var previews: some View {
         let sampleResult = Results(isGameCenterEnabled: false, supportedDevices: [], advisories: [], features: [], screenshotUrls: [], appletvScreenshotUrls: [], ipadScreenshotUrls: [], artworkUrl60: "", artworkUrl512: "", artworkUrl100: "", artistViewURL: "", kind: .software, minimumOSVersion: "", releaseNotes: "", artistID: 0, artistName: "", genres: [], price: 0, description: "", genreIDS: [], trackID: 0, trackName: "", primaryGenreName: .education, primaryGenreID: 0, bundleID: "", currentVersionReleaseDate: .now, isVppDeviceBasedLicensingEnabled: false, sellerName: "", releaseDate: .now, currency: .usd, averageUserRatingForCurrentVersion: 0.0, averageUserRating: 0.0, trackCensoredName: "", languageCodesISO2A: [], fileSizeBytes: "", sellerURL: "", formattedPrice: .free, contentAdvisoryRating: .the4, userRatingCountForCurrentVersion: 0, trackViewURL: "", trackContentRating: .the12, version: "", wrapperType: .software, userRatingCount: 0)
        return AppsDetailView(app: sampleResult)
    }

}









//import SwiftUI
//
//struct AppsDetailView: View {
//    let app: Results // Assuming AppModel is your actual app data model
//    let tempImageURL = "https://is1-ssl.mzstatic.com/image/thumb/Purple112/v4/1e/d5/86/1ed58648-0cc6-3a47-f5ac-6dc48f7a5eb1/AppIcon-Desmos-0-0-1x_U007emarketing-0-5-85-220.png/60x60bb.jpg"
//
//    var body: some View {
//        return ScrollView {
//            VStack(alignment: .leading, spacing: 10) {
//                HStack {
//                    AsyncImage(url: URL(string: tempImageURL)) { image in
//                        image
//                            .resizable()
//                            .frame(width: 380, height: 200)
//                    } placeholder: {
//                        ProgressView()
//                    }
//                }
//                Spacer()
//                // App Name
//                Text(result.trackName)
//                    .font(.title)
//
//                // App Description
//                Text(result.description)
//                    .font(.body)
//
//                // Release Notes
//                if let releaseNotes = result.releaseNotes {
//                    // Handle releaseNotes if it exists
//                    Text("Release Notes: \(releaseNotes)")
//                        .font(.body)
//                        .foregroundColor(.secondary)
//                } else {
//                    // Handle case where releaseNotes is nil
//                    Text("No release notes available")
//                        .font(.body)
//                        .foregroundColor(.secondary)
//                }
//
//                // Other Details (Release Date, Price, etc.)
//                VStack(alignment: .leading, spacing: 8) {
//                    Text("Release Date: \(formattedDate(result.releaseDate))")
//                    Text("Price: \(result.formattedPrice)")
//                    Text("Average User Rating: \(result.averageUserRating)")
//                    // Add more details as needed
//                }
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//            }
//            .padding()
//        }
//        .navigationTitle("App Details")
//            }
//
//        }
//
//    }
//}
//
//
//// Usage Example:
//struct AppsDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppsDetailView(app: exampleApp)
//    }
//}
