//
//  FirstJoinView.swift
//  attendanceBook
//
//  Created by calmkeen on 2023/04/08.
//
/*
 처음 앱을 설치한 사람에게 뜨는 뷰로써 간단한 가이드를 제공합니다.
 메인기능은 group과 각 탭이 무엇을 설명해주는 지 설명해주면서 동시에
 안내적인 기능을 제공합니다.
 앱을 처음 켤 시에 한번만 나오게 세팅되어야 합니다.
 */

import UIKit
import SnapKit

class FirstJoinView: UIViewController{
    
    var backgroundImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    var naviLabel: UILabel = {
        let label = UILabel()
        label.text = "제대로 관리해 보자구!"
        return label
    }()
    
    var pointImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    var nextBtn: UIButton = {
        let btn = UIButton()
        return btn
    }()
    override func viewDidLoad(){
        super.viewDidLoad()
        makeView()
        makeConstraints()
    }
    func makeView() {
        self.view.addSubview(backgroundImage)
        self.view.addSubview(naviLabel)
        self.view.addSubview(pointImage)
    }
    
    func makeConstraints() {
        backgroundImage.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
        naviLabel.snp.makeConstraints{ make in
            make.top.equalTo(backgroundImage.snp.top).offset(30)
        }
        pointImage.snp.makeConstraints{ make in
            make.bottom.equalTo(backgroundImage.snp.bottom).offset(30)
        }
        nextBtn.snp.makeConstraints{ make in
            make.top.equalTo(backgroundImage.snp.top)
            make.trailing.equalTo(backgroundImage.snp.trailing).offset(5)
        }
    }
    
    func nextBtnEvent() {
//        if nextBtn == .toggle {
//            //명확하지 않지만 명시적으로 다음뷰를 호출하는 느낌으로 이렇게 적었습니다. 네비게이션으로 변경할거기 떄문에 지그음 대충 하겠습니다.
//            append(LoginNavigationView())
//        }
    }
}
