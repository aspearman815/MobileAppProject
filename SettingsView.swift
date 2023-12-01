//
//  SettingsView.swift
//  AdventureStory
//
//  Created by Amara Spearman on 11/30/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var soundEnabled = true
    @State private var difficultyLevel = 1 // You can define different difficulty levels
    @State private var isNavigating = false

    var body: some View {
        NavigationView {
            VStack {
                Toggle("Sound Effects", isOn: $soundEnabled)
                    .padding()

                HStack {
                    Text("Difficulty")
                        .padding(.trailing)
                    Spacer()
                    Text(difficultyLabel)
                }
                .padding()

                Picker("Difficulty", selection: $difficultyLevel) {
                    Text("Easy").tag(1)
                    Text("Medium").tag(2)
                    Text("Hard").tag(3)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()

                Spacer()
            }
            .padding()
            .navigationBarTitle("Game Settings", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                isNavigating = true
            }) {
                Text("Back")
            })
            .background(
                NavigationLink(
                    destination: ContentView(),
                    isActive: $isNavigating,
                    label: { EmptyView() }
                )
            )
        }
    }

    private var difficultyLabel: String {
        switch difficultyLevel {
        case 1:
            return "Easy"
        case 2:
            return "Medium"
        case 3:
            return "Hard"
        default:
            return "Unknown"
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
