//
//  ViewController.swift
//  dragonFashion
//
//  Created by BYNC on 7/21/20.
//  Copyright © 2020 BYNC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dragons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
    
    
    let dragon = dragons[indexPath.row]
        cell.textLabel?.text = dragon.name
        cell.detailTextLabel?.text = dragon.clothingItem
        return cell}
    
    
    
    @IBOutlet weak var tableView: UITableView!
    var dragons : [dragon] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let dragon1 = dragon(name: "smaug", clothingItem: "crown")
        let dragon2 = dragon(name: "loco", clothingItem: "hat")
        let dragon3 = dragon(name: "comit", clothingItem: "bag")
        // Do any additional setup after loading the view.
    
    for dragon in dragons{
        print(dragon.fullDescription!)
    }
        dragons.append(contentsOf: [dragon1, dragon2, dragon3])
}
}
