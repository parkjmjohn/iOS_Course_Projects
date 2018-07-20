//
//  ViewController.swift
//  OffProject6
//
//  Created by John Park on 10/25/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var folderTableView: UITableView!
    var folders: [Folder]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Folders"
        folderTableView = UITableView(frame: view.frame)
        folderTableView.dataSource = self
        folderTableView.delegate = self
//        folderTableView.register(SongTableViewCell.self,            forCellReuseIdentifier: "SongTableViewCell")
//        dolderTableView.rowHeight = SongTableViewCell.height
        view.addSubview(folderTableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return folders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = folderTableView.dequeueReusableCell(withIdentifier: "folderCell", for: indexPath) as! folderCell
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


