//
//  ViewController.swift
//  IceCreamFlavors
//
//  Created by Steven Lipton on 11/16/17.
//  Copyright © 2017 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flavorName: UILabel!
    @IBOutlet weak var image: UIImageView!
    var index = 0
    let flavors = ["Vanilla","Chocolate","Coconut","Green Tea","Butter Pecan","Hazelnut"]
    
    @IBAction func changeFlavor(_ sender: UIButton) {
        index = (index + 1) % flavors.count
        image.image = UIImage(named: flavors[index])
        flavorName.text = flavors[index]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

