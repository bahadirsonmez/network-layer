//
//  ContentView.swift
//  network-layer
//
//  Created by Bahadır Kişisel on 25.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert: Bool = false
    @State private var alertText: String = ""
    @State private var data: [Recipe] = []
    
    var body: some View {
        VStack(spacing: 20) {
            Button {
                showAlert.toggle()
            } label: {
                Text("Hit me!")
            }
            .alert(alertText, isPresented: $showAlert, actions: { })
        }.onAppear {
            let request = GetAllRecipesRequest()
            RecipesService().getAllRecipes(request: request) { result in
                switch result {
                case .success(let data):
                    self.data = data
                case .failure(let error):
                    alertText = error.localizedDescription
                    showAlert.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
