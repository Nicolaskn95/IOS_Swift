//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
    
    var storyNumber = 0
    
    let story = [
        Story(
            title: "Voce é o capitão e está no barco com uma tripulação de marujos e avista uma floresta e uma ilha",
            choice1: "Ilha", choice2: "Floresta", choice1Destination: 1, choice2Destination: 7
        ),
        //ilha
        Story(
            title: "voce sai do barco em um bote com alguns marujos e atraca na areia da praia, e avista de longe um homem barbudo, magro, sentado olhando para o nada",
            choice1: "Conversar", choice2: "Nao se importar", choice1Destination: 2, choice2Destination: 4
        ),
        //ilha
        Story(
            title: "O homem estranho fala se ajudarem a sair da ilha, dará um mapa do tesouro",
            choice1: "Ajudar", choice2: "Prender ele", choice1Destination: 3, choice2Destination: 5
        ),
        //ilha
        Story(
            title: "Ele entrega o mapa do tesouro, e agradece por ajudar e fala que quer matar o Jack Sparrow, o homem estranho diz se pode ajudar a procurar",
            choice1: "Deixar ele ajudar", choice2: "Não deixar ele ajudar", choice1Destination: 6, choice2Destination: 6
        ),
        //ilha
        Story(
            title: "Voce e sua tripulação não encontra nada, o homem estranho desaparece, voce vai embora",
            choice1: "Fim da", choice2: "Jornada", choice1Destination: 0, choice2Destination: 0
        ),
        //ilha
        Story(
            title: "Na hora que sua tripulacao tenta prender ele, nao que tem uma faca embainhada feito de ossos de animal, ele acha uma opurtunidade, mata uns dos marujos e foge para dentro da ilha",
            choice1: "Fim da ", choice2: "Jornada", choice1Destination: 0, choice2Destination: 0
        ),
        //ilha
        Story(
            title: "O caminho por ser muito perigoso e cheio de armadilhas, o homem estranho acaba ajudando a encontrar o tesouro perdido! Ele diz que é um capitao tambem, assim voces entram em uma nova jornada a procura do Jack Sparrow",
            choice1: "Fim da ", choice2: "Jornada", choice1Destination: 0, choice2Destination: 0
        ),

        //floresta
        Story(
            title: "voce sai do barco em um bote com alguns marujos e atraca na floresta, e um dos seus marujos avista uma entrada com uma placa escrito Jurassic Park",
            choice1: "Entrar", choice2: "Não entrar, e explorar a floresta", choice1Destination: 8, choice2Destination: 10
        ),
        Story(
            title: "Voce encontra o dono do Park e ele diz que precisa de ajuda para salvar uma familia de estegossauros, um buraco que não conseguem sair.",
            choice1: "Ajudar", choice2: "Ir embora e não ajudar", choice1Destination: 9, choice2Destination: 11
        ),
        Story(
            title: "Voce com sua inteligencia e seus marujos, ajudam a construir um equipamento para retirar os estegossauros do buraco e fica muito feliz de ver todos aqueles diversos tipos de dinossauros, o dono da um tesouro misterioso, que dentro possui uma enigmas estranhos e desafios para uma nova aventura!",
            choice1: "Fim da ", choice2: "Jornada", choice1Destination: 0, choice2Destination: 0
        ),
        Story(
            title: "voce é afugentado por um T-Rex que come 3 marujos, voce foge da ilha",
            choice1: "Fim da ", choice2: "Jornada", choice1Destination: 0, choice2Destination: 0
        ),
        Story(
            title: "Voce vai embora da ilha a procura de novas aventuras!",
            choice1: "Fim da ", choice2: "Jornada", choice1Destination: 0, choice2Destination: 0)
        
        ]
    
     mutating func nextStory(userChoice: String){
        
         let currentStory = story[storyNumber]
         
         if(userChoice == currentStory.choice1){
            storyNumber = story[storyNumber].choice1Destination
        } else if(userChoice == currentStory.choice2){
            storyNumber = story[storyNumber].choice2Destination
        }
    }
    
    func getQuestionText() -> String{
        return story[storyNumber].title
    }
    
    func getChoice1() -> String{
        return story[storyNumber].choice1
    }
    
    func getChoice2() -> String{
        return story[storyNumber].choice2
    }
    
    
    
}

