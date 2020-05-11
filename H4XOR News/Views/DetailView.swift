//
//  DetailView.swift
//  H4XOR News
//
//  Created by Meidiana Monica on 09/05/20.
//  Copyright © 2020 Meidiana Monica. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url: String? // this url can be null cz have (?)
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
