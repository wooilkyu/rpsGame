//
//  main.swift
//  rpsGame
//
//  Created by 우일규 on 2021/06/01.
//

import Foundation

var randomValue: Int = 0
var isPlay = true

func startGame() {
    repeat {
        randomValue = createRandomValue()
        print(randomValue)
        print("가위(1), 바위(2), 보(3)! <종료: 0> :", terminator: " ")
        let userNum = inputUserValue()
        compare(userNum: userNum)
    } while isPlay == true
}

func exitGame() {
    print("게임 종료")
    isPlay = false
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

func compare(userNum: Int) {
    print(randomValue)
    switch userNum {
    case 0:
        exitGame()
    case 1:
        if randomValue == 3 {
            print("이겼습니다!")
        } else if randomValue == 2 {
            print("졌습니다!")
        } else if randomValue == 1 {
            print("비겼습니다!")
        }
    case 2:
        if randomValue == 3 {
            print("졌습니다!")
        } else if randomValue == 2 {
            print("비겼습니다!")
        } else if randomValue == 1 {
            print("이겼습니다!")
        }
    case 3:
        if randomValue == 3 {
            print("비겼습니다!")
        } else if randomValue == 2 {
            print("이겼습니다!")
        } else if randomValue == 1 {
            print("졌습니다!")
        }
    default:
        print("잘못된 입력입니다. 다시 시도해주세요.")
    }
}

func printResult() {

}

startGame()
