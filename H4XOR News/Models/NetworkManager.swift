//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Meidiana Monica on 09/05/20.
//  Copyright © 2020 Meidiana Monica. All rights reserved.
//

import Foundation


class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()

    
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits                   
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
