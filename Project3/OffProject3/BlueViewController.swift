//
//  BlueViewController.swift
//  OfficialProject3
//
//  Created by John Park on 10/16/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BlueText.text = tmpp
    }
    
    @IBOutlet weak var blueResponse: UITextView!
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        blueView = UIView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        blueView.layer.cornerRadius = 25
        blueView.backgroundColor = UIColor.blue
        view.addSubview(blueView)
        blueView.center = touches.first!.location(in: view)
        if BlueText.text == "" {
            blueResponse.text = "Enter name for this design"
        }
    }


    var tmpp: String = ""
    @IBOutlet weak var BlueText: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let dest = segue.destination as? ViewController {
            if (BlueText.text == ""){
            } else { dest.BlueOutlet.setTitle(BlueText.text, for: [])
            }
        }
    }

    

}
