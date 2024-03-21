//
//  AppModel.swift
//  EducationAppsListProject
//
//  Created by Takudzwa Zindoga on 19/3/2024.
//
import Foundation

class AppFetcher: ObservableObject {
    @Published var appData: [Results] = []
    static let shared = AppFetcher()

    

    func fetchApps(appIDs: [String], completion: @escaping ([Results]?) -> Void) {
        // Create a comma-separated string of app IDs
        let appIDString = appIDs.joined(separator: ",")
        let urlString = "https://itunes.apple.com/lookup?id=\(appIDString)"

        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            completion(nil)
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching data: \(error)")
                completion(nil)
                return
            }

            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                print("Invalid response")
                completion(nil)
                return
            }

            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    // Modify decoding strategy to treat dates as strings
                    decoder.dateDecodingStrategy = .formatted(DateFormatter.iso8601Full)

                    let decodedData = try decoder.decode(HTTPSItunesAppleCOMLookup653517540.self, from: data)
                    completion(decodedData.results)
                } catch {
                    print("Error decoding JSON: \(error)")
                    completion(nil)
                }
            } else {
                print("No data received")
                completion(nil)
            }
        }
        task.resume()
    }
}
extension DateFormatter {
    static let iso8601Full: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }()
}



