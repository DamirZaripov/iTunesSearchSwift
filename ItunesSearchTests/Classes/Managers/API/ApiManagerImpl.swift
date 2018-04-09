//
//  ApiManagerImpl.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 10.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class ApiManagerImpl: APIManager {
    
    var baseURL = "https://itunes.apple.com/"
    var endURL = "search"
    
    func getMedia(term: String, limit: String, mediaType: String, deviceType: String, completionBlock: @escaping (SearchMediaResult) -> ()) {
        
        let url = "\(baseURL)\(endURL)?term=\(term)&limit=\(limit)&media=\(mediaType)"
    
        guard let encoded = url.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed), let urlCheck = URL(string: encoded) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: urlCheck) { (data, response, error) in
            
            if  (error != nil ) {
                print("Error: \(String(describing: error?.localizedDescription))")
            } else {
                guard let data = data else { return }
                let dataString = String(data: data, encoding: .utf8)
                print(dataString ?? "dataString is nill :( ")
                do {
                    let searchDictionary = try JSONDecoder().decode(SearchMediaResult.self, from: data)
                    print("Data \(String(describing: searchDictionary))")
                    completionBlock(searchDictionary)
                } catch let errorMessage {
                    print(errorMessage.localizedDescription)
                }
                
            }
        }.resume()
    }

    
}
