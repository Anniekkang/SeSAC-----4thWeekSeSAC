//
//  translateViewController.swift
//  4thWeekSeSAC
//
//  Created by 나리강 on 2022/07/28.
//

import UIKit

class translateViewController: UIViewController {

    
    //UIButton, UITextField > Action
    //UITextView, UISearchBar, UIPickerView > X
    //UIControl
    //UIResponderChain > resignFirstResponder(),becomeFirstResponder()
    
    
    @IBOutlet weak var userInputTextView: UITextView!
    
    let textViewPlceholderText = "번역하고 싶은 문장을 적으시오"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        userInputTextView.delegate = self
        
        userInputTextView.text = textViewPlceholderText
        userInputTextView.textColor = .lightGray
//
//        userInputTextView.resignFirstResponder()
//        userInputTextView.becomeFirstResponder()
        
        userInputTextView.font = UIFont(name: "Georgia-BoldItalic", size: 17)
        
    }
    

}

extension translateViewController : UITextViewDelegate{
    
    //텍스트뷰의 텍스트가 변할 때 마다 호출
    func textViewDidChange(_ textView: UITextView) {
        print(textView.text.count)
    }
    
    //편집이 시작될 때, 커서가 시작될 때
    //텍스트뷰의 글자 : 플레이스 홀더랑 글자가 같으면 clear, color
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("Begin")
        
        if textView.textColor == .lightGray {
            textView.text = nil
            textView.textColor = .black
        }
    }
    
    //편집이 끝났을 때, 커서가 없어지는 순간
    //텍스트뷰의 글자 : X > 플레이스홀더 글자 보이게 해라
    func textViewDidEndEditing(_ textView: UITextView) {
        print("End")
        
        if textView.text.isEmpty {
            textView.text = textViewPlceholderText
            textView.textColor = .lightGray
        }
    }
    
    
}
