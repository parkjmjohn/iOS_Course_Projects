//
//  RedViewController.swift
//  OfficialProject3
//
//  Created by John Park on 10/16/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    var redView: UIView!
    
    @IBOutlet weak var redTitle: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        RedText.text = tmp
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        redView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
        redView.center = touches.first!.location(in: view)
        if (RedText.text == ""){
            redResponse.text = "Enter name for this design"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var tmp: String = ""
    
    @IBOutlet weak var RedText: UITextField!
    
    @IBOutlet weak var redResponse: UITextView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let dest = segue.destination as? ViewController {
            if (RedText.text == ""){
            } else { dest.RedOutlet.setTitle(RedText.text, for: [])
            }
        }
    }

}
