//
//  ViewController.swift
//  OffProject4
//
//  Created by John Park on 10/22/17.
//  Copyright © 2017 John Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var songs: [song] = [
        song(title: "Ultralight Beam", artist: "Kanye West", album: "The Life Of Pablo", cover: "theLifeOfPablo.jpeg"),
        song(title: "I Am A God", artist: "Kanye West", album: "Yeezus", cover: "yeezus.jpeg"),
        song(title: "POWER", artist: "Kanye West", album: "My Beautiful Dark Twisted Fantasy", cover: "myBeautifulDarkTwistedFantasy.jpeg"),
        song(title: "Amazing", artist: "Kanye West", album: "808s & Heartbreak", cover: "808s&Heartbreak.jpeg"),
        song(title: "Champion", artist: "Kanye West", album: "Graduation", cover: "graduation.jpg"),
        song(title: "Gold Digger", artist: "Kanye West", album: "Late Registration", cover: "lateRegistration.jpeg"),
        song(title: "Jesus Walks", artist: "Kanye West", album: "The College Dropout", cover: "theCollegeDropout.jpeg"),
        song(title: "Butterfly Effect", artist: "Travis Scott", album: "Butterfly Effect", cover: "butterflyEffect.jpeg"),
        song(title: "goosebumps", artist: "Travis Scott", album: "Birds In The Trap Sing McKnight", cover: "birdsInTheTrapSingMcKnight.jpeg"),
        song(title: "Mask Off", artist: "Future", album: "FUTURE", cover: "FUTURE.jpeg")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func unwindToMainView(sender: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.estimatedRowHeight = 80
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as! songCell
        let song = songs[indexPath.row]
        cell.songLabel.text = "Song: " + song.title
        cell.albumLabel.text = "Album: " + song.album
        cell.artistLabel.text = "Artist: " + song.artist
        cell.coverLabel.image = UIImage(named: song.cover)
        
        cell.index = indexPath.row
        cell.delegate = self
        
        return cell
    }
    
    var reddit: Int = -1
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? editViewController {
            dest.delegate = self
            dest.index = reddit
        }
    }
    
    func update(row rw: Int, song sng: String, artist artst: String, album albm: String){
        if (rw == -1) {
        } else {
            songs[rw].title = sng
            songs[rw].artist = artst
            songs[rw].album = albm
        }
        tableView.reloadData()
    }
}

