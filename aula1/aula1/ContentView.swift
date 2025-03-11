//
//  ContentView.swift
//  aula1
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var idade: String = ""
    @State var resultado: Int = 0
    

    var body: some View {
        VStack {
            Image(systemName: "cachorro")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculadora de imagem canina")
            
            TextField("Digite a idade humana", text: $idade)
            
                
            Button(action: calcular ) {
            Text("calcular")
            }
            
            Text($resultado)
            
        }
        .padding()
        
        }
    func calcular() {
        if Int(idade) > 0
        {
            resultado = idade * 7
        } else
        {
            print("Não foi possivel converter")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
