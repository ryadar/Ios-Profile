//
//  TableViewControllertViewController.swift
//  Ryadar
//
//  Created by Rajashekar ryada on 2/3/19.
//  Copyright © 2019 Rajashekar ryada. All rights reserved.
//

import UIKit

class TableViewControllertViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource {
    
    let array = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17"]

    @IBOutlet weak var tableViewView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "messagecell", for: indexPath) as! CustomeMessageCell

        cell.cutomeCellLabel.text = array[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewView.delegate = self
        tableViewView.dataSource = self
        
        tableViewView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "messagecell" )

    }

}
