//
//  Exercicio13.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 15/02/21.
//

import SwiftUI

struct Exercicio13: View {
    @State private var numero1 = "5.0"
    @State private var numero2 = "2.0"
    
    var exp: Double {
        let oper1 = Double(numero1) ?? 0
        let oper2 = Double(numero2) ?? 0
        let result = pow(oper1, oper2)
        return result
    }
    
    var body: some View {
        Text("Exponenciação: \(exp, specifier: "%.2f")")
    }
}

struct Exercicio13_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio13()
    }
}
