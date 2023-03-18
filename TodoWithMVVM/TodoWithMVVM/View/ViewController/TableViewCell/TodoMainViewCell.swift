//
//  TodoMainViewCell.swift
//  TodoWithMVVM
//
//  Created by calmkeen on 2023/03/04.
//

import UIKit
import SnapKit


class TodoMainViewCell: UITableViewCell {
    
    static let identifier = "TodoMainListCell"
    var todoListModel: [TodoListModel] = []
    
    //체크를 감지하는 변수
    var isChecked: Bool = false
    //셀 전체의ㅡ ui
    private let todoListCell: UIView = {
       let cell = UIView()
        return cell
    }()
    //ui title
    var todoListTitle: UILabel = {
       let titleLabel = UILabel()
        return titleLabel
    }()
    //체크 이미지 버튼
    var todoListCheck: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "btn_check_off"), for: .focused)
        return btn
    }()
    
    func DataLoad(todoListModel: TodoListModel) {
        todoListTitle.text = todoListModel.title
    }
    
    
    func checkBtn() {
        var checkbool: Bool = false
        if checkbool == false {
            checkbool = true
        } else {
            return checkbool = false
        }
    }
    
    func makeCell() {
        addSubview(todoListCell)
        addSubview(todoListTitle)
        addSubview(todoListCheck)
    }
    
    func makeConstraints() {
        todoListCell.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        todoListTitle.snp.makeConstraints{ make in
            make.top.equalTo(todoListCell.snp.top).offset(5)
            make.leading.equalTo(todoListCell.snp.leading).offset(5)
        }
        todoListCheck.snp.makeConstraints { make in
            make.bottom.equalTo(todoListCell.snp.bottom).offset(5)
            make.trailing.equalTo(todoListCell.snp.trailing).offset(5)
            
        }
    }

}
extension TodoMainViewCell {
    enum Btn {
        static let notCheckBtn = "btn_check_off"
        static let CheckBtn = "btn_check_on"
    }
    private func setCheck(){
        
    }
    
}
