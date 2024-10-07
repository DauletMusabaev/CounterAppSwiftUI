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

            HStack(spacing: 20) {
                Button(action: incrementCounter) {
                    Text("+")
                        .font(.largeTitle)
                        .frame(width: 80, height: 80)
                        .background(Color.green) // Цвет останется статическим
                        .foregroundColor(.white)
                        .cornerRadius(40)
                }
            }

            Button(action: resetCounter) {
                Text("Сброс")
                    .font(.title)
                    .padding()
                    .background(Color.accentColor) // Использование системного цвета
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
        }
        .padding()
        .background(Color(UIColor.systemBackground)) // Автоматическая поддержка фона
    }

    // Метод для увеличения значения счетчика
    private func incrementCounter() {
        counter += 1
    }

    // Метод для сброса значения счетчика
    private func resetCounter() {
        counter = 0
    }
}

#Preview {
    ContentView()
}
