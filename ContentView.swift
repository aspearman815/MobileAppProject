//
//  ContentView.swift
//  AdventureStory
//
// 
//

import SwiftUI

struct ContentView: View {
    @State private var showSettings = false

    var body: some View {
        NavigationStack {
            ZStack {
                Image("forestbg")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("The Haunting Hour")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white) // Change the text color here
                    Text("Written by Team 6")
                        .font(.headline)
                        .foregroundColor(.red) // Change the text color here
                    NavigationLink(destination: PageView(choiceMade: .constant(0))) {
                        Text("Let's Go!")
                            .foregroundColor(.white) // Change the text color here
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Button(action: {
                        showSettings.toggle()
                    }) {
                        Text("Settings")
                            .foregroundColor(.white) // Change the text color here
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.top, 10)
                }
            }
            .sheet(isPresented: $showSettings) {
                SettingsView()
            }
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
