//
//  Exercicio018.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 16/02/21.
//

import SwiftUI

struct Exercicio018: View {
    @State private var txtTotalDeEleitores = ""
    @State private var txtVotosValidos = ""
    @State private var txtPercentualValidos = ""
    @State private var txtVotosBrancos = ""
    @State private var txtPercentualBrancos = ""
    @State private var txtVotosNulos = ""
    @State private var txtPercentualNulos = ""
    
    func calcularPercentuais() {
        var percentual = 0.0
        // Converte total de eleitores
        let totalDeEleitores = Int(txtTotalDeEleitores) ?? 1
        // Calcula percentual de votos válidos
        let totalValidos = Int(txtVotosValidos) ?? 0
        percentual = Double(totalValidos) / Double(totalDeEleitores) * 100
        self.txtPercentualValidos = String(format: "%.0f", percentual)
        // Calcula percentual de votos em branco
        let totalBrancos = Int(txtVotosBrancos) ?? 0
        percentual = Double(totalBrancos) / Double(totalDeEleitores) * 100
        self.txtPercentualBrancos = String(format: "%.0f", percentual)
        // Calcula percentual de votos nulos
        let totalNulos = Int(txtVotosNulos) ?? 0
        percentual = Double(totalNulos) / Double(totalDeEleitores) * 100
        self.txtPercentualNulos = String(format: "%.0f", percentual)
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Eleitores")) {
                    TextField("Total de eleitores", text: $txtTotalDeEleitores)
                }
                Section(header: Text("Votos")) {
                    HStack {
                        TextField("Total de votos válidos", text: $txtVotosValidos)
                        Spacer()
                        Text("\(txtPercentualValidos)%")
                    }
                    HStack {
                        TextField("Total de votos em branco", text: $txtVotosBrancos)
                        Spacer()
                        Text("\(txtPercentualBrancos)%")
                    }
                    HStack {
                        TextField("Total de votos nulos", text: $txtVotosNulos)
                        Spacer()
                        Text("\(txtPercentualNulos)%")
                    }
                }
                Button(action: self.calcularPercentuais) {
                    Text("Calcular Percentuais")
                }
            }
            .navigationBarTitle("Votos do Município")
        }
    }
    
    struct Exercicio018_Previews: PreviewProvider {
        static var previews: some View {
            Exercicio018()
        }
    }
}
