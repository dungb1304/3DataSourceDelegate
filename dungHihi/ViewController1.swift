//
//  ViewController1.swift
//  dungHihi
//
//  Created by DungB96 on 2018/05/26.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet var bt1: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func tappedBt(_ sender: UIButton) {
            bt1.forEach({ (bt) in
                if sender.isSelected == true {
                    bt.setImage(UIImage(), for: .selected)
                    bt.setTitleColor(UIColor.blue, for: .selected)
                } else {
                    bt.setTitleColor(UIColor.red, for: .highlighted)
                }
            })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
