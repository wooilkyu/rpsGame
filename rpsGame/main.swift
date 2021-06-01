//
//  main.swift
//  rpsGame
//
//  Created by 우일규 on 2021/06/01.
//

import Foundation

var randomValue: Int = createRandomValue()
var userNum: Int = inputUserValue()
var isPlay = true

func startGame() {
    repeat {
        print("가위(1), 바위(2), 보(3)! <종료: 0> :", terminator: " ")
        print(randomValue)
        if userNum < 4 && userNum > 0 {
            compare()
        }
    } while isPlay == true
}

func createRandomValue() -> Int {
    let computedValue = Int.random(in: 1...3)
    return computedValue
}

func inputUserValue() -> Int {
    guard let userStr = readLine() else { return 0 }
    let userValue = Int(userStr) ?? 0
    return userValue
}

func compare() {
    switch userNum {
    case 0:
        exitGame()
    case 1:
        if randomValue == 3 {
            print("이겼습니다!")
            exitGame()
        } else if randomValue == 2 {
            print("졌습니다!")
            exitGame()
        } else if randomValue == 1 {
            print("비겼습니다!")
        }
    case 2:
        if randomValue == 3 {
            print("졌습니다!")
            exitGame()
        } else if randomValue == 2 {
            print("비겼습니다!")
        } else if randomValue == 1 {
            print("이겼습니다!")
            exitGame()
        }
    case 3:
        if randomValue == 3 {
            print("비겼습니다!")
        } else if randomValue == 2 {
            print("이겼습니다!")
            exitGame()
        } else if randomValue == 1 {
            print("졌습니다!")
            exitGame()
        }
    default:
        print("잘못된 입력입니다. 다시 시도해주세요.")
        startGame()
    }
}

func printResult() {
    
}

func exitGame() {
    print("게임 종료")
    isPlay = false
}

startGame()

