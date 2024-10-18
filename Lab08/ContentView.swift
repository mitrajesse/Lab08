//
//  ContentView.swift
//  Lab08
//
//  Created by Jesse Mitra on 10/11/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Chair(legWidth: 20, legHeight: 150, seatLength: 200, seatThickness: 100)
                .fill(Color.black)
                .padding([.leading, .bottom], 90.0)

            Spacer()
            
            Chair(legWidth: 10, legHeight: 75, seatLength: 100, seatThickness: 50)
                .fill(Color.black)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
