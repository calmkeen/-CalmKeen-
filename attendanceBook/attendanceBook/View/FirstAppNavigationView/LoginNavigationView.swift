//
//  LoginNavigationView.swift
//  attendanceBook
//
//  Created by calmkeen on 2023/04/08.
//


/*
로그인을 유도하면서 로그인없이 앱에 접근할수 있게 해주는 마지막 뷰입니다.
 가운데를 로티 label로 작성한 이유는
MainFunc 변경을 고려하여 나중에 추가될 메인기능을
 작성하기 위해 로티 및 라벨로 네이밍 해 두었습니다.
 
 */

import UIKit
import SnapKit


class LoginNavigationView: UIViewController {
    
    var backgroundLottie: UIImageView = {
        let background = UIImageView()
        return background
    }()
    var labelList: UIView = {
        let list = UIView()
        return list
        
    }()
    var loginNaviBtn: UIButton = {
        let btn = UIButton()
//        btn.titleLabel = "로그인"
        return btn
    }()
    var skipBtn: UIButton = {
        let btn = UIButton()
//        btn.titleLabel = "skip"
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeView()
        makeConstraint()
    }
    
    func makeView() {
        self.view.addSubview(backgroundLottie)
        self.view.addSubview(labelList)
        self.view.addSubview(loginNaviBtn)
        self.view.addSubview(skipBtn)
    }
    
    func makeConstraint() {
        backgroundLottie.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
        labelList.snp.makeConstraints{ make in
            make.top.equalTo(backgroundLottie.snp.top).offset(50)
        }
        loginNaviBtn.snp.makeConstraints{ make in
            make.bottom.equalTo(backgroundLottie.snp.bottom)
            make.leading.equalTo(backgroundLottie.snp.leading).offset(5)
        }
        skipBtn.snp.makeConstraints{ make in
            make.bottom.equalTo(backgroundLottie.snp.bottom)
            make.trailing.equalTo(backgroundLottie.snp.trailing).offset(5)
        }
    }
    
}
