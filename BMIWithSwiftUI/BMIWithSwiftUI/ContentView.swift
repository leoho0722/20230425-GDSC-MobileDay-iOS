//
//  ContentView.swift
//  BMIWithSwiftUI
//
//  Created by Leo Ho on 2023/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var height: String = ""
    @State private var weight: String = ""
    @State private var bmi: Double = 0.0
    @FocusState private var isFocus: Bool
    
    var body: some View {
        VStack {
            Text("你的 BMI 為：\(bmi)")
            TextField("請輸入身高", text: $height)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
                .focused($isFocus)
            TextField("請輸入體重", text: $weight)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
                .focused($isFocus)
            Button {
                isFocus.toggle()
                guard let height = Double(height),
                      let weight = Double(weight) else {
                    return
                }
                bmi = weight / pow(height, 2)
            } label: {
                Text("計算")
            }.buttonStyle(.bordered)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
