//
//  ViewController.swift
//  week2
//
//  Created by HENRY on 2022/03/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 155
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "poket" , for: indexPath) as! PoketmonTableViewCell
            cell.poketmonNameLabel.text = "피카츄"
            cell.poketmonIndexLabel.text = "01"
            cell.poketmoneTypeLabel.text = "전기타입"
            return cell
        }
        else if indexPath.row == 1 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "poket" , for: indexPath) as! PoketmonTableViewCell
            cell.poketmonNameLabel.text = "꼬부기"
            cell.poketmonIndexLabel.text = "02"
            cell.poketmoneTypeLabel.text = "물타입"
            return cell
        }
        else {
            var cell = tableView.dequeueReusableCell(withIdentifier: "poket" , for: indexPath) as! PoketmonTableViewCell
            cell.poketmonNameLabel.text = "메타몽"
            cell.poketmonIndexLabel.text = "000"
            cell.poketmoneTypeLabel.text = "최강무적"
            return cell
        }
        
    }
}
