//
//  ModalViewController.swift
//  OfficialProject3
//
//  Created by John Park on 10/16/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        greenView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 200))
        greenView.backgroundColor = UIColor.green
        view.addSubview(greenView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        greenView.center = touches.first!.location(in: view)
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
