//
//  ViewController.swift
//  TodoWithMVVM
//
//  Created by calmkeen on 2023/02/28.
//

import UIKit

class TodoMainViewController: UIViewController {
    
    //cell 데이터
    var cellCount: [TodoListModel] = []

    @IBOutlet weak var titleBarView: UIView!
    
    @IBOutlet weak var subFuncBar: UIView!
    
    @IBOutlet weak var userTitleLabel: UILabel!
    
    @IBOutlet weak var userInfoBtn: UIButton!
    
    @IBOutlet weak var addContentBtn: UIButton!
    
    @IBOutlet weak var todoTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table
        // Do any additional setup after loading the view.
//        self.navigationController?.isNavigationBarHidden = true
    }
}

extension TodoMainViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellCount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TodoMainListCell", for: indexPath) as? TodoListModel else { return UITableViewCell()}
        
    }
}

