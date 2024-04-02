//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Oliver Hu on 2/13/24.
//

import Foundation

extension Bundle {
    //T can be whatever we want, as long as that thing conforms to Codable
    func decode<T: Codable>(_ file: String) -> T {
        //find file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        //load file
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()
        //format date
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        //decode file
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return loaded
    }
}

