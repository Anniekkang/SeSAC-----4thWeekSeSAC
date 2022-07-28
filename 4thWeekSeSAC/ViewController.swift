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
        // Do any additional setup after loading the view.
    }


}

