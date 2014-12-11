//
//  Playlist.swift
//  swift-jukebox-tableviews
//
//  Created by Joe Burgess on 12/10/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

import UIKit

class Playlist: NSObject {
    var name : String
    var songs : [Song] = [Song]()

    init(name: String) {
        self.name = name
    }

}
