//
//  ViewController.swift
//  kataba.md
//
//  Created by ShogoYamada on 2017/07/03.
//  Copyright © 2017年 山田尚吾. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func next(trasitionName :String){
        let next = storyboard!.instantiateViewController(withIdentifier: trasitionName)
        self.present(next,animated: true, completion: nil)
    }


}

