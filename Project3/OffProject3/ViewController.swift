//
//  ViewController.swift
//  OfficialProject3
//
//  Created by John Park on 10/16/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var i: Int = 0
    @IBAction func Red(_ sender: Any) {
    }
    @IBAction func Blue(_ sender: Any) {
    }
    @IBOutlet weak var GreenOutlet: UIButton!
    @IBOutlet weak var RedOutlet: UIButton!
    @IBOutlet weak var BlueOutlet: UIButton!
    @IBAction func unwindToMainView(sender: UIStoryboardSegue) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let dest = segue.destination as? RedViewController{
        dest.tmp = (RedOutlet.currentTitle ?? "")
        }
    if let dests = segue.destination as? BlueViewController{
        dests.tmpp = (BlueOutlet.currentTitle ?? "")
    }
}
}
