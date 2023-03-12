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
    var todoListModel: [TodoListModel]

    private let todoListCell: UIView = {
       let cell = UIView()
        return cell
    }()
    
    var todoListTitle: UILabel = {
       let titleLabel = UILabel()
        titleLabel.text = TodoListModel.title
        return titleLabel
    }()
    var todoListCheck: UIButton = {
        let btn = UIButton()
//        bool.images = "체크안된 이미지 박스"
        if bool == false {
            return self()
        } else if bool == true {
            return bool.image = "체크된 이미지"
        }
        return bool
    }()
    func checkBtn(action: todoListCheck) {
        var checkbool: Bool = false
        if checkbool == false {
            checkbool = true
        } else {
            return checkbool.description.reversed()
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
