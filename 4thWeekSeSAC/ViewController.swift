//
//  ViewController.swift
//  4thWeekSeSAC
//
//  Created by 나리강 on 2022/07/27.
//

import UIKit

class ViewController: UIViewController,ViewPresentableProtocol {
  
    static let indentifier: String = "viewController"
    
    var navigationTitleString: String  {
        get {
            return "Annie's Tamagotchi"
        }
        set {
            title = newValue
        }
    }
    
    var backgroundColor: UIColor{
        get {
            return .blue
        }
    }

    
    func configureView() {
        
        navigationTitleString = "Nari's Tamagotchi"
       // backgroundColor = .red
        
        title = navigationTitleString
        view.backgroundColor = backgroundColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaultsHelper.standard.nickname = "고래밥" //newvalue에 들어가게됨
        title = UserDefaultsHelper.standard.nickname
        UserDefaultsHelper.standard.age = 80
        
        print(UserDefaultsHelper.standard.age)//훨씬더 간단!
    }
    
}

