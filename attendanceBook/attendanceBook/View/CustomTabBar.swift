//
//  TabView.swift
//  attendanceBook
//
//  Created by calmkeen on 2023/04/12.
//
/*
 하단 탭은 전체 공용으로써
 랜딩 으로 뜨는 이벤트 특징 페이지가 아니면
 동일하게 적용됩니다.
 
 all list(학생관리, 그룹관리, 설정)
 */
import UIKit

//class CustomTabBarView: UITabBarController {
    
    enum tabitem: Int {
        case memberTab
        case groupTab
        case settingTab
        
        var tabBardeSelect: UIImage? {
            switch self {
            case .memberTab:
                //멤버탭 클릭시
                return UIImage(systemName: "person.badge.plus")
            case .groupTab:
                //그룹탭 클릭시
                return UIImage(systemName: "person.3")
            case .settingTab:
                //세팅탭 클릭시
                return UIImage(systemName: "list.bullet.clipboard")
            }
        }
        var tabBardisSelected: UIImage? {
            switch self {
            case .memberTab:
                //멤버탭 클릭시
                return UIImage(systemName: "person.fill.badge.plus")
            case .groupTab:
                //그룹탭 클릭시
                return UIImage(systemName: "person.3.fill")
            case .settingTab:
                //세팅탭 클릭시
                return UIImage(systemName: "list.bullet.clipboard.fill")
            }
        }
    }
    
    let stackOne = UINavigationController(rootViewController:  (ViewController()))
    let stackTwo = UINavigationController(rootViewController:  (ViewController()))
    
    
    final class CustomTabBar: UIView {
        private let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.distribution = .fillEqually
            stackView.alignment = .center
            return stackView
        }()
        private let tabItems: [CustomTabBar]
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    var memberTab: UIView = {
        let tab = UIView()
        tab.isHidden = false
        return tab
    }()
    var groupTab: UIView = {
        let tab = UIView()
        return tab
    }()
    var setting: UIView = {
        let tab = UIView()
        return tab
    }()
    

    

    
    //        override func viewDidLoad() {
    //            super.viewDidLoad()
    //        }
    //
    func makeView() {
        //        self.view.addSubview()
    }
    func makeConstraint() {
        
    }
    
    
//}
