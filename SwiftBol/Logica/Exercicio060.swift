//
//  Exercicio060.swift
//  SwiftBol
//
//  Created by Carlos Alberto Savi on 16/02/21.
//

import SwiftUI

struct Exercicio060: View {
    @State private var txtUsuario = ""
    @State private var txtSenha = ""
    @State private var exibirSenha = false
    @State private var exibirAlertaErro = false
    @State private var exibirAlertaSucesso = false
    
    func validarUsuario() {
        if self.txtUsuario == "1234" {
            self.exibirSenha = true
        } else {
            self.exibirSenha = false
            self.exibirAlertaErro = true
        }
    }
    
    func validarSenha() {
        if self.txtSenha == "9999" {
            self.exibirAlertaSucesso = true
        } else {
            self.exibirAlertaErro = true
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Entre com seu código de usuário")) {
                    TextField("código", text: $txtUsuario)
                    Button(action: self.validarUsuario) {
                        Text("Validar usuário")
                    }
                }
                if exibirSenha {
                    Section(header: Text("Entre com sua senha")) {
                        SecureField("senha", text: $txtSenha)
                        Button(action: self.validarSenha) {
                            Text("Validar senha")
                        }
                    }
                }

            }
            .navigationBarTitle("Login")
            .alert(isPresented: $exibirAlertaErro, content: {
                Alert(title: Text("Atenção"), message: Text("Dados inválidos, favor verificar"), dismissButton: .default(Text("Entendi!")))
                
            })
        }
        .alert(isPresented: $exibirAlertaSucesso, content: {
            Alert(title: Text("Login"), message: Text("Acesso Liberado!"), dismissButton: .default(Text("Ok")))

        })
    }
}

struct Exercicio060_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio060()
    }
}
