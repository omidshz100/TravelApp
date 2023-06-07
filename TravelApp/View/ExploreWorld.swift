//
//  ExploreWorld.swift
//  TravelApp
//
//  Created by Omid Shojaeian Zanjani on 07/06/23.
//

import SwiftUI

struct ExploreWorld: View {
    
    @State private var searchString = ""
    
    let item = GridItem(.adaptive(minimum: 100, maximum: 150))
    
    var destinations: [Destination] {
        if searchString.isEmpty {
            return Destination.sampleData
        }
        return Destination.sampleData.filter({ $0.name.lowercased().contains(searchString.lowercased())})
    }
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                topNav
                topTitle
                searchBar
                destinationList
            }
            .padding(.horizontal)
        }
        .padding(.vertical)
    }
    ////// // Some Viewes
    ///

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
    
    var searchBar: some View {
        HStack {
            TextField("Enter location", text: $searchString)
            Image(systemName: "magnifyingglass")
        }
        .padding()
        .background(.gray, in: RoundedRectangle(cornerRadius: 10))
        .clipped()
        .shadow(radius: 2)
    }
    
    var destinationList: some View {
            LazyVGrid(columns: [item], alignment: .center, spacing: 30) {
                ForEach(destinations) { destination in
                    VStack {
                        AsyncImage(url: URL(string: destination.imageString)!) { img in
                            img
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        } placeholder: {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 100, height: 100)
                        }
                        
                        Text(destination.name)
                            .foregroundColor(.black)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 5)
                    .background(.primary, in: RoundedRectangle(cornerRadius: 10))
                }
            }
            .animation(.easeInOut, value: searchString)
        }
}

struct ExploreWorld_Previews: PreviewProvider {
    static var previews: some View {
        ExploreWorld()
    }
}
