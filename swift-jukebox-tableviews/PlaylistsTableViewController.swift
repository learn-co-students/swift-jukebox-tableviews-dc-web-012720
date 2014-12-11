//
//  PlaylistsTableViewController.swift
//  swift-jukebox-tableviews
//
//  Created by Joe Burgess on 12/9/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

import UIKit

class PlaylistsTableViewController: UITableViewController {
    var playlists = [Playlist]()
    override func viewDidLoad() {
        super.viewDidLoad()

        let playlistOne = Playlist(name: "Songs to Code By");
        let playlistTwo = Playlist(name: "More Songs to Code By");


        let songOne = Song(artist: "Matoma", title: "Bailando", album: "Remixes", filename: "bailando")
        let songTwo = Song(artist: "Matoma", title: "Gangsta Bleeding Love", album: "Remixes", filename: "gangsta_bleeding_love")

        playlistOne.songs.append(songOne)
        playlistOne.songs.append(songTwo)

        let songThree = Song(artist: "Matoma", title: "Higher Love", album: "Remixes", filename: "higher_love")
        let songFour = Song(artist: "Matoma", title: "Hold On Be Strong", album: "Remixes", filename: "hold_on_be_strong")

        playlistTwo.songs.append(songThree)
        playlistTwo.songs.append(songFour)

        playlists.append(playlistOne)
        playlists.append(playlistTwo)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return playlists.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell", forIndexPath: indexPath) as UITableViewCell

        cell.textLabel?.text = playlists[indexPath.row].name
        // Configure the cell...

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.

        let playlistVC = segue.destinationViewController as PlaylistViewController
        let selectedIndexPath = tableView.indexPathForSelectedRow()
        if let selectedIndexPath = selectedIndexPath
        {
            playlistVC.playlist = playlists[selectedIndexPath.row]
        }
    }

}
