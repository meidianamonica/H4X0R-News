//
//  PostData.swift
//  H4XOR News
//
//  Created by Meidiana Monica on 09/05/20.
//  Copyright © 2020 Meidiana Monica. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
