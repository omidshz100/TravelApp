//
//  ExploreWorld.swift
//  TravelApp
//
//  Created by Omid Shojaeian Zanjani on 07/06/23.
//

import SwiftUI
// first commit
struct ExploreWorld: View {
    
    @State private var searchString = ""
    
    let item = GridItem(.adaptive(minimum: 100, maximum: 150))
    
    var destinations: [Destination] {
        if searchString.isEmpty {
            return Destination.sampleData
        }
        return Destination.sampleData.filter({ $0.name.lowercased().contains(searchString.lowercased())})
    }
    
    var topNav: some View {
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.orange)
                    .padding()
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    .clipped()
                    .shadow(radius: 2)
                
                Spacer()
                
                Image(systemName: "bell")
                    .foregroundColor(.orange)
                    .padding()
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    .clipped()
                    .shadow(radius: 2)
                
            }
        }
    var topTitle: some View {
            Text("Explore \nthe world!")
                .font(.largeTitle)
        }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ExploreWorld_Previews: PreviewProvider {
    static var previews: some View {
        ExploreWorld()
    }
}
