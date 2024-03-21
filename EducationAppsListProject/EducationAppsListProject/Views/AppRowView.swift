////
////  AppRowView.swift
////  EducationAppsListProject
////
////  Created by Takudzwa Zindoga on 19/3/2024.
////
//
//import SwiftUI
//
//struct AppRowView: View {
//
//    @ObservedObject var appfetcher = AppFetcher()
//
//
//    var app: Results
//
//    init(app: Results) {
//        self.app = app
//    }
//
//    var body: some View {
//        HStack(alignment: .top) {
//            VStack(alignment: .leading, spacing: 8) {
//                Text("\(app.userRatingCount)")
//                    .font(.subheadline)
//                    .foregroundColor(.black)
//                Text("Desmos Graphing Calculator")
//                    .font(.custom("SF Pro Display", size: 20))
//                    .fontWeight(.bold)
//
//                VStack {
//                    Text("Desmos is an advanced graphing calculator implemented as a web application and a mobile application written in TypeScript and JavaScript.")
//                        .font(.subheadline)
//                        .foregroundColor(.gray)
//
//                }
//
//            }
//           // Add some vertical padding to the VStack
//            // Add a divider between the VStack and the Image
//
//            Image("Desmos")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .cornerRadius(10)
//                .frame(width: 100, height: 100,alignment: .bottomLeading)
//
//        }
//        .padding() // Add horizontal padding to the entire HStack
//    }
//}
//
//struct AppRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppRowView(app: Results(isGameCenterEnabled: false, supportedDevices: [], advisories: [], features: [], screenshotUrls: [], appletvScreenshotUrls: [], ipadScreenshotUrls: [], artworkUrl60: "", artworkUrl512: "", artworkUrl100: "", artistViewURL: "", kind: .software, minimumOSVersion: "", releaseNotes: "", artistID: 0, artistName: "", genres: [], price: 0, description: "", genreIDS: [], trackID: 0, trackName: "App Name", primaryGenreName: .education, primaryGenreID: 0, bundleID: "", currentVersionReleaseDate: .now, isVppDeviceBasedLicensingEnabled: false, sellerName: "", releaseDate: .now, currency: .usd, averageUserRatingForCurrentVersion: 0.0, averageUserRating: 0.0, trackCensoredName: "", languageCodesISO2A: [], fileSizeBytes: "", sellerURL: "", formattedPrice: .free, contentAdvisoryRating: .the4, userRatingCountForCurrentVersion: 0, trackViewURL: "", trackContentRating: .the12, version: "", wrapperType: .software, userRatingCount: 4.5))
//            .frame(width: 380, height: 130)
//            .background(Color.white)
//            .previewLayout(.sizeThatFits)
//    }
//}
