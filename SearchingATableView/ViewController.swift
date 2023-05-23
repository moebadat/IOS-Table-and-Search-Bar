//
//  ViewController.swift
//  SearchingATableView
//
//  Created by DA MAC M1 144 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        tableView.dataSource=self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as?TableViewCell else{return UITableViewCell()}//if there is nothing in the cell just return the empty cell
        cell.nameLabel.text="Moe"
        return cell
    }
    
    
    
}

