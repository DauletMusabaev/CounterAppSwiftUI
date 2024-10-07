//
//  ContentView.swift
//  CounterSwiftUI
//
//  Created by Daulet Musabaev on 07.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Счётчик")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(Color.primary) // Поддержка темной темы

            Text("\(counter)")
                .font(.system(size: 80, weight: .bold))
                .padding()
                .foregroundColor(Color.primary) // Поддержка темной темы
        }
        .padding()
        .background(Color(UIColor.systemBackground)) // Автоматическая поддержка фона
    }
}

#Preview {
    ContentView()
}
