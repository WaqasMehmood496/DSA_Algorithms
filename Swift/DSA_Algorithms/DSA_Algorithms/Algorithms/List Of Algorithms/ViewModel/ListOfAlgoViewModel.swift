//
//  ListOfAlgoViewModel.swift
//  DSA_Algorithms
//
//  Created by iApple Basement on 19/11/2023.
//

import Foundation


class ListOfAlgoViewModel {
    
    var algoList: [ListOfAlgoModel] = []
    
    init(){
        algoList = [
            ListOfAlgoModel(algoName: "Linked List"),
            ListOfAlgoModel(algoName: "Double Linked List"),
            ListOfAlgoModel(algoName: "Stack"),
            ListOfAlgoModel(algoName: "Queue")
        ]
    }
    
    deinit {}
    
}
