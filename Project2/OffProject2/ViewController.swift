//
//  ViewController.swift
//  OffProject2
//
//  Created by John Park on 10/18/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    var temp: String! = ""
    
    @IBOutlet weak var item: UITextField!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var input: UITextView!
    @IBAction func addItem(_ sender: Any) {
        temp!.append("Item: \(item.text ?? "") / Quantity: \(number.text ?? "")\n")
        //print(temp ?? "Nothing Happened")
        input.text = temp
    }
    
    func getFirstElement(fromArray array: [String]) -> String{
        return array[0]
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

