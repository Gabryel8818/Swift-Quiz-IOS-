//
//  Quiz.swift
//  Swift-Quiz
//
//  Created by user156551 on 23/01/20.
//  Copyright © 2020 GABRIEL MELO. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String //a variavel foi privada para nao ter acesso fora da classe
    
    init(question:String, options: [String], correctedAnswer: String) {
        
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    } // Classe que representa o quiz
    
    func validateOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctedAnswer
    } // function que valida a escolha a partir de um indice que me retorna verdadeiro ou falso
      // podemos observar que o indice remete ao array definido para a coletion das questões
    
    deinit {
        print("Liberou o Quiz da memória")
    }// Quando um quiz for iniciado a mensagem sera mostrada indicando a desinicialização do anterior
    
    
}
