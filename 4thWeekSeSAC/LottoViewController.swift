//
//  LottoViewController.swift
//  4thWeekSeSAC
//
//  Created by 나리강 on 2022/07/28.
//

import UIKit
//1. import
import Alamofire
import SwiftyJSON

class LottoViewController: UIViewController {
    
   
    
    @IBOutlet weak var numberTextField: UITextField!
 //   @IBOutlet weak var lottoPickerView: UIPickerView!
    
    var lottoPickerview = UIPickerView()
    //코드로 뷰를 만드는 기능이 훨씬 더 많이 남아 있습니다
    
    
    let numberList : [Int] = Array(1...1025).reversed()
    override func viewDidLoad() {
        super.viewDidLoad()

        numberTextField.textContentType = .oneTimeCode //인증번호
        
        
        numberTextField.tintColor = .clear
        numberTextField.inputView = lottoPickerview
        
        lottoPickerview.delegate = self
        lottoPickerview.dataSource = self
        requestLotte(number: 1025)
        
        
    }
    
    func requestLotte(number : Int){
        
        //AF: 200~299 성공 ,status code 수정가능
        let url = "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=\(number)"
        AF.request(url, method: .get).validate(statusCode: 200..<300).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                    
                let bonus = json["bnusNo"].intValue
                print(bonus)
                
                let date = json["drwNoDate"].stringValue
                print(date)
                
                self.numberTextField.text = date
                
            case .failure(let error):
                print(error)
            }
        }
        
    }
    

}

extension LottoViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numberList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        requestLotte(number: numberList[row])
       // numberTextField.text = "\(numberList[row])회차"
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return  "\(numberList[row])회차"
    }

    
    }

