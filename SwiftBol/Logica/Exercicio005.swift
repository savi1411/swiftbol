//
//  Exercicio005.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 11/02/21.
//

import SwiftUI

struct Exercicio005: View {
    @State private var idade: Int = 47
    @State private var altura: Double = 1.82
    @State private var peso: Double = 89.0
    
    var body: some View {
        List {
            Text("Idade: \(idade)")
            Text("Altura: \(altura, specifier: "%.2f")")
            Text("Peso: \(peso, specifier: "%.2f")")
        }
    }
}

struct Exercicio005_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio005()
    }
}
