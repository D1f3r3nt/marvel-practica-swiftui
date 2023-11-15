//
//  ContentView.swift
//  marvel-practica-swiftui
//
//  Created by Marc Santisteban Ruiz on 14/11/23.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var viewModel: RootViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(viewModel.characters) { character in
                    NavigationLink {
                        
                    } label: {
                        HomeRow(character: character)
                    }
                }
            }
            .navigationTitle("Marvel Heroes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(RootViewModel(testing: true))
    }
}
