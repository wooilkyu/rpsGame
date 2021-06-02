//
//  main.swift
//  rpsGame
//
//  Created by 우일규 on 2021/06/01.


import Foundation
// MARK: - STEP1
var randomValue: Int = 0
var isPlay = true
var winner: String = ""

func startGame() {
    repeat {
        randomValue = createRandomValue()
        print("가위(1), 바위(2), 보(3)! <종료: 0> :", terminator: " ")
        let userNum = inputUserValue()
        compare(userNum: userNum)
        if winner != "" {
            secondGame()
        }
    } while isPlay == true
        print("게임 종료")
}

func exitGame() {
    isPlay = false
    winner = ""
}

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
            winner = "사용자"
        } else if randomValue == 2 {
            print("졌습니다!")
            winner = "컴퓨터"
        } else {
            print("비겼습니다!")
        }
    case 2:
        if randomValue == 3 {
            print("졌습니다!")
            winner = "컴퓨터"
        } else if randomValue == 2 {
            print("비겼습니다!")
        } else {
            print("이겼습니다!")
            winner = "사용자"
        }
    case 3:
        if randomValue == 3 {
            print("비겼습니다!")
        } else if randomValue == 2 {
            print("이겼습니다!")
            winner = "사용자"
        } else {
            print("졌습니다!")
            winner = "컴퓨터"
        }
    default:
        print("잘못된 입력입니다. 다시 시도해주세요.")
    }
}

func battle(userNum: Int) {
    if randomValue == userNum {
        if winner == "사용자" {
            print("사용자의 승리!")
            exitGame()
        } else {
            print("컴퓨터의 승리!")
            exitGame()
        }
    } else {
        if winner == "사용자" {
            winner = "컴퓨터"
        } else {
            winner = "사용자"
        }
        
    }
}

func secondGame() {
    repeat {
        print("[\(winner) 턴] 묵(1), 찌(2), 빠(3)! <종료 : 0> :", terminator: "")
        randomValue = createRandomValue()
        let userNum = inputUserValue()
        battle(userNum: userNum)
    } while winner == "사용자" || winner == "컴퓨터"
}

startGame()



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
