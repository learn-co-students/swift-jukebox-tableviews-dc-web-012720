//
//  SongPlayer.m
//  swift-jukebox-tableviews
//
//  Created by Joe Burgess on 12/11/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "SongPlayer.h"
#import <AVFoundation/AVFoundation.h>

@interface SongPlayer ()
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@end

@implementation SongPlayer
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

- (void) play
{
    [self.audioPlayer play];
}

- (void) stop
{
    [self.audioPlayer stop];
}

- (void) updateSliderWithSelector:(SEL)selector
{
}
@end
