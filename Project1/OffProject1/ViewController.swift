//
//  ViewController.swift
//  OffProject1
//
//  Created by John Park on 10/18/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBAction func revealMessage(_ sender: UIButton) {
        message.text = "Hello \(collector.text ?? "No One")"
        collector.text = ""
    }
    
    @IBOutlet weak var collector: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

