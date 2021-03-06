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

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
    
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@", key);
    if( [key isEqualToString:@"c"] )
        [aqp getVoice:0].freq = 1461.626;
    else
         [aqp getVoice:0].freq = 101.626;
    
    [aqp getVoice:0].amp = 1.;
    
    int numberOfTouches = 0;
    
    for(NSObject *t in touches)
        numberOfTouches++;
    
    if(numberOfTouches == 1)
        NSLog(@"ONE");
    else
        NSLog(@"TWO or more");
}
@end
