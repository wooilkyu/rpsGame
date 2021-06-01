//
//  main.swift
//  rpsGame
//
//  Created by 우일규 on 2021/06/01.
//

import Foundation

//MARK: - STEP1. 변수 함수 생성
//변수

var randomValue: Int = createRandomValue()



//함수
func startGame() {
    
}

func createRandomValue() -> Int {
    let computedValue = Int.random(in: 1...3)
    return computedValue
}

func inputUserValue() {
    
}

func printResult() {
    
}

func exitGame() {
    print("게임 종료")
}


print("가위(1), 바위(2), 보(3)! <종료: 0> :", terminator: " ")
print(randomValue)
