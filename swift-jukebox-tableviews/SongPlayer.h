//
//  SongPlayer.h
//  swift-jukebox-tableviews
//
//  Created by Joe Burgess on 12/11/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SongPlayer : NSObject

- (void)setupAVAudioPlayWithFileName:(NSString *)fileName;
- (void) play;
- (void) stop;
@end
