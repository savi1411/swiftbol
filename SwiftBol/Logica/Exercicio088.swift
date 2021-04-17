//
//  Exercicio088.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 16/02/21.
//

import SwiftUI

struct Exercicio088: View {
    @State private var contadorNomes = 1
    @State private var txtNome = String()
    @State private var txtNomeAProcurar = String()
    @State private var txtAcheiONome = String()
    @State private var arrayNomes = [String]()
    @State private var solicitarNome = false
    @State private var exibirAlerta = false
    
    func adicionarNome() {
        if !self.txtNome.isEmpty {
            arrayNomes.append(self.txtNome)
            if contadorNomes < 10 {
                contadorNomes += 1
            } else {
                self.solicitarNome = true
            }
        }
    }
    
    func procurarNome() {
        let achei = arrayNomes.contains(where: { (nome) in
            return nome.lowercased() == self.txtNomeAProcurar.lowercased()
        })
        if achei {
            txtAcheiONome = "ACHEI"
        } else {
            txtAcheiONome = "NÃO ACHEI"
        }
        self.exibirAlerta = true
    }
    
    var body: some View {
        Form {
            Section(header: Text("Entrar com os nomes de 10 pessoas")) {
                TextField("digite um nome", text: $txtNome)
            }
            Button(action: self.adicionarNome) {
                Text("Adicionar nome \(contadorNomes)")
            }
            .disabled(solicitarNome == true)
            
            Section(header: Text("Nomes adicionados")) {
                List {
                    ForEach(arrayNomes, id: \.self) { nome in
                        Text("\(nome)")
                    }
                }
            }
            if solicitarNome {
                Section(header: Text("Digite um nome para pesquisa")) {
                    TextField("digite um nome", text: $txtNomeAProcurar)
                }
                Button(action: self.procurarNome) {
                    Text("Pesquisar na lista")
                }
            }
        }
        .alert(isPresented: $exibirAlerta, content: {
            Alert(title: Text("Pesquisa de Nome"), message: Text("\(txtAcheiONome)"), dismissButton: .default(Text("Ok!")))

        })
    }
}

struct Exercicio088_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio088()
    }
}
