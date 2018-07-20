//
//  YellowViewController.swift
//  OfficialProject3
//
//  Created by John Park on 10/19/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    var yellowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func YellowText(_ sender: Any) {
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        yellowView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        yellowView.backgroundColor = UIColor.red
        view.addSubview(yellowView)
        yellowView.center = touches.first!.location(in: view)
        if (YellowText.text == ""){
//            redResponse.text = "Enter name for this design"
        }
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
