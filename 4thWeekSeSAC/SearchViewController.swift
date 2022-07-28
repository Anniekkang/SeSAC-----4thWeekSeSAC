//
//  SearchViewController.swift
//  4thWeekSeSAC
//
//  Created by 나리강 on 2022/07/27.
//

import UIKit

/*
 Swift Protocol
 - Delegate
 - Datesource
 
 1. 왼팔/오른팔
 2. 테이블뷰 아울렛 연결
 3. 1 + 2
 */

//한번에 일괄작업하기
extension UIViewController {
    func setBackgroundColor(){
        
        view.backgroundColor = .red
    }
}



class SearchViewController: UIViewController, ViewPresentableProtocol, UITableViewDelegate, UITableViewDataSource {
    var navigationTitleString: String = ""
    
    var backgroundColor: UIColor = .clear
    
    static var indentifier: String = ""
    
    
    func configureView() {
        searchTableView.backgroundColor = .clear
        searchTableView.separatorColor = .clear
        searchTableView.rowHeight = 60
    }
    
    func configureLabel() {
        
        
    }
    
    
    
    

    @IBOutlet weak var searchTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //연결고리작업 : 테이블뷰가 해야 할 역할 > 뷰 컨트롤러에게 요청 = delegatepattern
        //self : 클래스의 인스턴스
        searchTableView.delegate = self
        searchTableView.dataSource = self
        //테이블뷰가 사용할 테이블뷰 셀(xib) 등록
        //XIB : xml interface builder <== NIB⭐️ 별도로 등록해주는 작업
        searchTableView.register(UINib(nibName: ListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: ListTableViewCell.identifier)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.identifier, for: indexPath) as? ListTableViewCell else { return UITableViewCell() }
        
        cell.titleLabel.font = .boldSystemFont(ofSize: 22)
        cell.titleLabel.text = "HELLO"
        
        return cell
        
        
    }
    

}
