//
//  ContentView.swift
//  Magic
//
//  Created by Sara Diaz Perez on 15/7/22.
//

import SwiftUI

struct ContentView: View {
    let candidateName = "Sara Díaz Pérez"
    let candidateEmail = "sdiazper.arq@gmail.com"
    let dateTest = "15 de Julio 2022"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 36) {
                VStack {
                Image("Photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .clipShape(Circle())
                
                Text("\(candidateName)")
                    .font(.title)
                }
                
                VStack(spacing: 8) {
                    Text("Email: \(candidateEmail)")
                    Text("Fecha prueba: \(dateTest)")
                }
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        CardsView()
                    } label: {
                        Text("Cartas Magic")
                    }
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
