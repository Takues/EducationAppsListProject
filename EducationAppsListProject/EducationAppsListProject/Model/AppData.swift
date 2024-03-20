//
//  AppData.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 19/3/2024.
//

import Foundation

struct AppModel: Decodable,Identifiable {
    let id: String
    let appName: String
    let artistName: String
    let genre: String
    let price: Double
    let releaseDate: Date
    let resultCount: Int
    let result: [AppModel]
}

enum AppError: Error {
    case invalidURL
    case networkError
    case invalidResponse
    case httpError(statusCode: Int)
    case jsonDecodingError
    case noData
}

