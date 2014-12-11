//
//  Song.swift
//  swift-jukebox-tableviews
//
//  Created by Joe Burgess on 12/10/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

import UIKit

class Song: NSObject {
    let artist : String
    let title : String
    let album : String
    let filename : String

    init(artist: String, title: String, album: String, filename: String)
    {
        self.artist = artist
        self.title = title
        self.album = album
        self.filename = filename
    }

}
