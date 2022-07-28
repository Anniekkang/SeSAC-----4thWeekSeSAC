//
//  LottoViewController.swift
//  4thWeekSeSAC
//
//  Created by 나리강 on 2022/07/28.
//

import UIKit

class LottoViewController: UIViewController {
    
   
    
    @IBOutlet weak var numberTextField: UITextField!
 //   @IBOutlet weak var lottoPickerView: UIPickerView!
    
    var lottoPickerview = UIPickerView()
    //코드로 뷰를 만드는 기능이 훨씬 더 많이 남아 있습니다
    
    
    let numberList : [Int] = Array(1...1025).reversed()
    override func viewDidLoad() {
        super.viewDidLoad()

        numberTextField.tintColor = .clear
        numberTextField.inputView = lottoPickerview
        
        lottoPickerview.delegate = self
        lottoPickerview.dataSource = self
        
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
        numberTextField.text = "\(numberList[row])회차"
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return  "\(numberList[row])회차"
    }

    
}
