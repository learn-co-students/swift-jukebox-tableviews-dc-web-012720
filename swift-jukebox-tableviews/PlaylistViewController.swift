//
//  PlaylistViewController.swift
//  swift-jukebox-tableviews
//
//  Created by Joe Burgess on 12/10/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

import UIKit

class PlaylistViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var playlist: Playlist?
    let player = SongPlayer()
    
    @IBOutlet weak var songsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = playlist?.name
        songsTableView.delegate = self
        songsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("basicCell", forIndexPath: indexPath) as UITableViewCell

        cell.textLabel?.text = playlist?.songs[indexPath.row].title
        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let playlist = playlist
        {
            return playlist.songs.count
        } else
        {
            return 0
        }
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        player.setupAVAudioPlayWithFileName(playlist?.songs[indexPath.row].filename)
        player.play()
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    

}
