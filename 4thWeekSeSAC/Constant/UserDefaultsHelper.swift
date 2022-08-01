//
//  UserDefaultsHelper.swift
//  4thWeekSeSAC
//
//  Created by 나리강 on 2022/08/01.
//

import Foundation

class UserDefaultsHelper {
    
    private init() { }//초기화를 못하게 막음-인스턴스를 다시 생성하는걸 못하게함
    
    static let standard = UserDefaultsHelper()
    //singleton pattern(인스턴스 하나만 영구적으로 쓸 수 있게 타입프로퍼티로 만들고 사용) : 자기자신의 인스턴스를 타입 프로퍼티 형태로 가지고 있음,데이터에 대한 동기화를 유지하기 위해 싱글톤패턴 사용함
    
    
    let userDefaults = UserDefaults.standard
    
    enum Key : String {
        case nickname,age
      
    }
    
    var nickname : String {
        get {
            return userDefaults.string(forKey: Key.nickname.rawValue) ?? "대장" //nil이라면 "대장"
        }
        set { //연산프로퍼티에서 default로 사용하는 값 - parameter로 newvalue
            userDefaults.set(newValue, forKey: Key.nickname.rawValue)
        }

    }
    
    var age : Int {
        get {
            return userDefaults.integer(forKey: Key.age.rawValue) //default값이 0임
        }
        set {
            userDefaults.set(newValue, forKey: Key.age.rawValue)
        }
    }
    
}
