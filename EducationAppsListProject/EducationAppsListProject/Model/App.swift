//
//  Song.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 19/3/2024.
//

import Foundation

// MARK: - Welcome
struct HTTPSItunesAppleCOMLookup653517540: Codable {
    let resultCount: Int
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let supportedDevices: [String]
    let isGameCenterEnabled: Bool
    let advisories: [String]
    let features: [String]
    let screenshotUrls, ipadScreenshotUrls: [String]
    let appletvScreenshotUrls: [String]
    let artworkUrl60, artworkUrl512, artworkUrl100: String
    let artistViewURL: String
    let kind: String
    let artistID: Int
    let artistName: String
    let genres: [String]
    let price: Int
    let primaryGenreName: String
    let primaryGenreID: Int
    let genreIDS: [String]
    let releaseNotes, description: String
    let currentVersionReleaseDate: Date
    let bundleID, sellerName: String
    let releaseDate: Date
    let currency: String
    let averageUserRatingForCurrentVersion: Double
    let trackCensoredName: String
    let languageCodesISO2A: [String]
    let fileSizeBytes: String
    let sellerURL: String
    let formattedPrice, contentAdvisoryRating: String
    let userRatingCountForCurrentVersion: Int
    let trackViewURL: String
    let trackContentRating: String
    let averageUserRating: Double
    let minimumOSVersion, version, wrapperType: String
    let isVppDeviceBasedLicensingEnabled: Bool
    let trackID: Int
    let trackName: String
    let userRatingCount: Int
    
    enum CodingKeys: String, CodingKey {
        case supportedDevices, isGameCenterEnabled, advisories, features, screenshotUrls, ipadScreenshotUrls, appletvScreenshotUrls, artworkUrl60, artworkUrl512, artworkUrl100
        case artistViewURL = "artistViewUrl"
        case kind
        case artistID = "artistId"
        case artistName, genres, price, primaryGenreName
        case primaryGenreID = "primaryGenreId"
        case genreIDS = "genreIds"
        case releaseNotes, description, currentVersionReleaseDate
        case bundleID = "bundleId"
        case sellerName, releaseDate, currency, averageUserRatingForCurrentVersion, trackCensoredName, languageCodesISO2A, fileSizeBytes
        case sellerURL = "sellerUrl"
        case formattedPrice, contentAdvisoryRating, userRatingCountForCurrentVersion
        case trackViewURL = "trackViewUrl"
        case trackContentRating, averageUserRating
        case minimumOSVersion = "minimumOsVersion"
        case version, wrapperType, isVppDeviceBasedLicensingEnabled
        case trackID = "trackId"
        case trackName, userRatingCount
    }
}
