//
//  DataSource.swift
//  dungHihi
//
//  Created by DungB96 on 2018/05/26.
//  Copyright © 2018 DungB96. All rights reserved.
//

import Foundation
import UIKit



class DataSource: NSObject, UITableViewDataSource {
    var list = Array(1...10)
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(list[indexPath.row])
        return cell
    }
}
