//
//  File.swift
//  4thWeekSeSAC
//
//  Created by 나리강 on 2022/08/01.
//

import Foundation


/*
 1.struct type property vs enumtype property => 인스턴스 생성 방지
 2. enum case vs enum static => 중복된 값을 쓸 수 있음, case 에는 제약
 
 
 */
enum StoryboardName {
    
    //접근제어를 통한 초기화 방지
    
    static let main = "Main"
    static let search = "Search"
    static let setting = "Setting"
}
//같은 값을 가지고 있지만 다른 위치 -> static let
enum Fontname {
    static let title = "SanFrancisco"
    static let body = "SanFrancisco"
    static let caption = "AppleSandol"
}


