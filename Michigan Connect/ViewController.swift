//
//  ViewController.swift
//  Michigan Connect
//
//  Created by Pablo Segovia on 8/14/23.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var daysOfWeekStack: UIStackView!
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var addEventButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        daysOfWeekStack.layer.cornerRadius = 10
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ClassCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell" , for: indexPath) as! ClassCell
       
        return cell
        
    }
    
    private func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
           let headerView = UIView()
           headerView.backgroundColor = view.backgroundColor
           return headerView
       }
    
    private func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 100
       }
}


