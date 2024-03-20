//
//  Song.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 19/3/2024.
//

import Foundation

struct HTTPSItunesAppleCOMLookup653517540: Codable {
    let resultCount: Int
    let results: [Results]
}

// MARK: - Result
struct Results: Codable {
    let isGameCenterEnabled: Bool
    let supportedDevices, advisories, features: [String]
    let screenshotUrls: [String]
    let appletvScreenshotUrls: [String]
    let ipadScreenshotUrls: [String]
    let artworkUrl60, artworkUrl512, artworkUrl100: String
    let artistViewURL: String
    let kind: Kind
    let minimumOSVersion: String
    let releaseNotes: String?
    let artistID: Int
    let artistName: String
    let genres: [String]
    let price: Int
    let description: String
    let genreIDS: [String]
    let trackID: Int
    let trackName: String
    let primaryGenreName: PrimaryGenreName
    let primaryGenreID: Int
    let bundleID: String
    let currentVersionReleaseDate: Date
    let isVppDeviceBasedLicensingEnabled: Bool
    let sellerName: String
    let releaseDate: Date
    let currency: Currency
    let averageUserRatingForCurrentVersion, averageUserRating: Double
    let trackCensoredName: String
    let languageCodesISO2A: [String]
    let fileSizeBytes: String
    let sellerURL: String?
    let formattedPrice: FormattedPrice
    let contentAdvisoryRating: Rating
    let userRatingCountForCurrentVersion: Int
    let trackViewURL: String
    let trackContentRating: Rating
    let version: String
    let wrapperType: Kind
    let userRatingCount: Int

    enum CodingKeys: String, CodingKey {
        case isGameCenterEnabled, supportedDevices, advisories, features, screenshotUrls, appletvScreenshotUrls, ipadScreenshotUrls, artworkUrl60, artworkUrl512, artworkUrl100
        case artistViewURL = "artistViewUrl"
        case kind
        case minimumOSVersion = "minimumOsVersion"
        case releaseNotes
        case artistID = "artistId"
        case artistName, genres, price, description
        case genreIDS = "genreIds"
        case trackID = "trackId"
        case trackName, primaryGenreName
        case primaryGenreID = "primaryGenreId"
        case bundleID = "bundleId"
        case currentVersionReleaseDate, isVppDeviceBasedLicensingEnabled, sellerName, releaseDate, currency, averageUserRatingForCurrentVersion, averageUserRating, trackCensoredName, languageCodesISO2A, fileSizeBytes
        case sellerURL = "sellerUrl"
        case formattedPrice, contentAdvisoryRating, userRatingCountForCurrentVersion
        case trackViewURL = "trackViewUrl"
        case trackContentRating, version, wrapperType, userRatingCount
    }
}
enum Rating: String, Codable {
    case the12 = "12+"
    case the4 = "4+"
}

enum Currency: String, Codable {
    case usd = "USD"
}

enum FormattedPrice: String, Codable {
    case free = "Free"
}

enum Kind: String, Codable {
    case software = "software"
}

enum PrimaryGenreName: String, Codable {
    case education = "Education"
    case productivity = "Productivity"
}


