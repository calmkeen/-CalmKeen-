//
//  TodoMainViewCell.swift
//  TodoWithMVVM
//
//  Created by calmkeen on 2023/03/04.
//

import UIKit
import SnapKit
import Lottie

class TodoMainViewCell: UITableViewCell {
    
    let animationView: LottieAnimationView = .init(name: "Checkbox")
    
    
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
        btn.addTarget(self, action: #selector(checkBtn), for: .touchUpInside)
        return btn
    }()
    
    func DataLoad(todoListModel: TodoListModel) {
        todoListTitle.text = todoListModel.title
    }
    
    @objc
    func checkBtn() {
        var checkbool: Bool = false
        if checkbool == false {
            checkbool = true
//            lottie 체크 박스
            animationView.play()
        } else {
            return checkbool = false
        }
    }
    
    func setData(todoData: TodoListModel){
        todoListTitle.text = todoData.title
        todoListCheck = todoData.checkDo
    }
    
    func makeCell() {
        addSubview(todoListCell)
        addSubview(todoListTitle)
        addSubview(todoListCheck)
        self.addSubview(animationView)
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

//MARK: - for Debug Preview Provider // snapkit or anuto layout에 관련된 UI를 볼 수 있는 뷰들을 swift UI로 미리 볼수 있게 해줍니다.셀은 어떻게 uiViewController로  wrapping할지 모르겠다

//#if DEBUG
//
//import SwiftUI
//
//struct TestViewPresentable: UIViewControllerRepresentable {
//    @available(iOS 13.0, *)
//    //표시할 cell들을 makeUIViewcontroller에 표시해 주고
//    func makeUIViewController(context: Context) -> UIViewController {
//        return TodoMainViewCell()
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
//
//    }
//}
//
////여기 Peview Provider에서 UIViewControllerREpresentable 에서 만들어진 ui를 불러옵니다.
//struct TestViewFor_Preview: PreviewProvider {
//    static var previews: some View {
//        TestViewPresentable()
//    }
//}
//#endif
