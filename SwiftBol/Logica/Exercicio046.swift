//
//  Exercicio046.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 15/02/21.
//

import SwiftUI

struct Exercicio046: View {
    @State private var txtConta = ""
    @State private var txtSaldo = ""
    @State private var txtDebito = ""
    @State private var txtCredito = ""
    @State private var txtSaldoAtual = "0.0"
    @State private var txtStatusSaldo = ""
    
    func calcSaldo() {
        let saldo = Double(txtSaldo) ?? 0
        let credito = Double(txtCredito) ?? 0
        let debito = Double(txtDebito) ?? 0
        let saldoAtual = saldo - debito + credito
        self.txtSaldoAtual = String(saldoAtual)
        if saldoAtual > 0 {
            self.txtStatusSaldo = "Saldo Positivo"
        } else if saldoAtual == 0 {
            self.txtStatusSaldo = ""
        } else {
            self.txtStatusSaldo = "Saldo Negativo"
        }
    }

    var body: some View {
        Form {
            Section(header: Text("Extrato")) {
                TextField("Número da Conta", text: $txtConta)
                TextField("Saldo", text: $txtSaldo)
                TextField("Débito", text: $txtDebito)
                TextField("Crédito", text: $txtCredito)
            }
            Button(action: self.calcSaldo) {
                Text("Calcular")
            }
            Section(header: Text("Saldo atualizado")) {
                Text("\(txtSaldoAtual)")
                Text("\(txtStatusSaldo)")
            }
        }
    }
}

struct Exercicio046_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio046()
    }
}
