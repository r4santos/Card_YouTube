//
//  TabItemView.swift
//  card_youtube
//
//  Created by COTEMIG on 16/09/25.
//

import SwiftUI

struct TabItemView: View {
    let icon: String
    let name: String
    var body: some View {
        Image.init(systemName: icon)
            .imageScale(.large)
            .foregroundColor(.accentColor)
        Text(name).foregroundColor(.accentColor)
    
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(icon: "heart", name: "Heart")
    }
}
