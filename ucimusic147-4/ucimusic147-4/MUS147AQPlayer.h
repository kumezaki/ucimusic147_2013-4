//
//  MUS147AQPlayer.h
//  Music147_2013
//
//  Created by Kojiro Umezaki on 4/4/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <AudioToolbox/AudioToolbox.h>
#import <Foundation/Foundation.h>

#import "MUS147Voice_Sample_Mem.h"

// number of buffers used by system
#define kNumBuffers     3

// number of possible voices
#define kNumVoices      13

// sample rate
#define kSR				11025.

@interface MUS147AQPlayer : NSObject {

	AudioQueueRef				queue;
	AudioQueueBufferRef			buffers[kNumBuffers];
	AudioStreamBasicDescription	dataFormat;
    
    MUS147Voice* voice_samp_mem[kNumVoices];
    MUS147Voice* voice[kNumVoices];
}

-(void)setup;

-(OSStatus)start;
-(OSStatus)stop;

-(MUS147Voice*)getVoice:(UInt8)pos;
-(void)setVoice:(UInt8)pos:(MUS147Voice_Sample_Mem*)v;

-(MUS147Voice*)getRecordVoice:(UInt8)pos;

-(void)fillAudioBuffer:(Float64*)buffer:(UInt32)num_samples;


@end
