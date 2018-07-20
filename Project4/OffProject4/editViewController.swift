//
//  editViewController.swift
//  OffProject4
//
//  Created by John Park on 10/22/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class editViewController: UIViewController {
    
    var delegate: ViewController?
    var index: Int = -1

    @IBOutlet weak var songName: UITextField!
    @IBOutlet weak var artistName: UITextField!
    @IBOutlet weak var albumName: UITextField!
    @IBAction func savePressed(_ sender: Any) {
        
        delegate!.update(row: index, song: songName.text!, artist: artistName.text!, album: albumName.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (index == -1){}
        else{
            songName.text = delegate!.songs[index].title
            artistName.text = delegate!.songs[index].artist
            albumName.text = delegate!.songs[index].album
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}
