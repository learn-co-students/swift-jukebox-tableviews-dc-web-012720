---
  tags: intermediate, Table-Views
  languages: swift
---

Jukebox-TableViews
=========

### Goals 

- Get even more familiar with Table View Controllers... We'll be using them all the time! 
- Re-configure an existing application to use Table View Controllers. 


Let's take the Jukebox lab and use Table Views to more efficiently layout our playlists.    


### Instructions 

#### Models

##### Song

###### Properties

  * Title
  * Artist
  * Album
  * File Name
    * File name of mp3 file, without mp3 extension.

##### Playlist

A class to contain a list of songs, with some convienance methods.

###### Properties

  * Songs
  * Name

#### Views

1. Add a Navigation Controller and embed a Table View Controller.

- The first Table View Controller will display a list of playlists.  The title for each cell will display the name of the playlist (you'll have to add a name property to your Playlist object).  The subtitle will display the number of songs in the playlist.  

- When clicking on a playlist, you'll push a new ViewController onto the stack.  This View Controller will subclass `UIViewControlle`r  (Not `UITableViewController`), but it will contain a Table View.  Make sure you set this View Controller to conform to the `UITableViewDelegate` and `UITableViewDataSource` Protocols.  

2. Create an **objective-C** class to hold all of the `AVPlayer` stuff and then use a bridging header to access it from Swift. Here is the method in Objective-C

```
- (void)setupAVAudioPlayWithFileName:(NSString *)fileName
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:fileName
                                         ofType:@"mp3"]];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc]
                    initWithContentsOfURL:url
                    error:&error];
    if (error)
    {
        NSLog(@"Error in audioPlayer: %@",
              [error localizedDescription]);
    } else {
        [self.audioPlayer prepareToPlay];
    }
}
```

The Table View will display the list of songs in the playlist.  All of the other functionality from the Jukebox should still exist: 

- Tapping a cell should play the song in that cell 

### Hints

When adding a tableview to your viewcontroller, don't forget to create an outlet from your tableview to your viewcontroller and connect the table view's delegate and data sources.  

### Extra Credit 

- Create a modal that when presented lists all of the songs and allows an additional song to be added to the playlist.  




