//
//  ViewController.swift
//  dungHihi
//
//  Created by DungB96 on 2018/05/26.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var name = ["one","two","three","four","five","six","seven","eight","nine","ten"]
    
    @IBOutlet weak var myView: UITableView!
    var datasource = DataSource()
    
    @IBAction func clickChange(_ sender: UISwitch) {
        if sender.isOn {
            myView.dataSource = self
        } else {
            myView.dataSource = datasource
        }
        myView.reloadData()
    }
    
    @IBAction func clickConvert(_ sender: UIButton) {
        if sender.isTouchInside == true {
            myView.dataSource = datasource
        } else {
            myView.dataSource = self
        }
        myView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myView.dataSource = self
        myView.delegate = self
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
        return cell
    }
    
    
}

