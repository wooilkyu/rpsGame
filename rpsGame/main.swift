//
//  main.swift
//  rpsGame
//
//  Created by 우일규 on 2021/06/01.


import Foundation
// MARK: - STEP1
var randomValue: Int = 0
var isPlay = true

func startGame() {
    repeat {
        randomValue = createRandomValue()
        print("가위(1), 바위(2), 보(3)! <종료: 0> :", terminator: " ")
        let userNum = inputUserValue()
        compare(userNum: userNum)
    } while isPlay == true
}

func exitGame() {
    print("게임 종료")
    isPlay = false
}

// ------------ 재귀함수 사용시 --------------
//func startGame() {
//    print("가위(1), 바위(2), 보(3)! <종료: 0> :", terminator: " ")
//    let userNum = inputUserValue()
//    compare(userNum: userNum)
//    if isPlay == false {
//        print("게임 종료")
//        exitGame()
//    } else {
//        startGame()
//    }
//}
//
//func exitGame() {
//    isPlay = false
//}

func createRandomValue() -> Int {
    let computedValue = Int.random(in: 1...3)
    return computedValue
}

func inputUserValue() -> Int {
    guard let userStr = readLine() else { return 4 }
    let userValue = Int(userStr) ?? 4
    if userStr.count != 1 {
        return 4
    }
    return userValue
}

func compare(userNum: Int) {
    switch userNum {
    case 0:
        exitGame()
    case 1:
        if randomValue == 3 {
            print("이겼습니다!")
        } else if randomValue == 2 {
            print("졌습니다!")
        } else {
            print("비겼습니다!")
        }
    case 2:
        if randomValue == 3 {
            print("졌습니다!")
        } else if randomValue == 2 {
            print("비겼습니다!")
        } else {
            print("이겼습니다!")
        }
    case 3:
        if randomValue == 3 {
            print("비겼습니다!")
        } else if randomValue == 2 {
            print("이겼습니다!")
        } else {
            print("졌습니다!")
        }
    default:
        print("잘못된 입력입니다. 다시 시도해주세요.")
    }
}

func battle() {

}

startGame()
