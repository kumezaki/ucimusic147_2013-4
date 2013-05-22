//
//  MUS147Button.m
//  ucimusic147-4
//
//  Created by Lab User on 5/22/13.
//  Copyright (c) 2013 UCI Music 147. All rights reserved.
//

#import "MUS147Button.h"
#import "MUS147AQPlayer.h"
extern MUS147AQPlayer* aqp;

@implementation MUS147Button
-(id)init
{
    self = [super init];
    return self;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [aqp getVoice:0].amp = 1.;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [aqp getVoice:0].amp = 0.;
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
}

@end
