//
//  MUS147ViewController.m
//  Music147_2013
//
//  Created by Kojiro Umezaki on 4/5/13.
//  Copyright (c) 2013 Kojiro Umezaki. All rights reserved.
//

#import "MUS147ViewController.h"

#import "MUS147AQPlayer.h"
extern MUS147AQPlayer* aqp;

@interface MUS147ViewController () 

@end

@implementation MUS147ViewController

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[UIAccelerometer sharedAccelerometer] setDelegate:self];
    
}

-(void) accelerometer: (UIAccelerometer *)accelerometer didAccelerate: (UIAcceleration *)acceleration
{
    NSLog(@"%f %f,%f", acceleration.x, acceleration.y, acceleration.z);
    float speed;
    
    if(acceleration.y > 0)
    {
        speed = -1 * acceleration.y + 1;
        
        if(speed < 0.5)
            speed = 0.5;
    }
    
    else if(acceleration.y == 0)
        speed = 1;
    
    else if(acceleration.y < 0)
    {
        speed = 1 + -1 * acceleration.y * 3.4;
        
        if(speed > 4)
            speed = 4;
    }
    for (int i = 1; i <= 12; i++) {
        [aqp getVoice:i].speed = speed;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)setFreq0:(id)sender
{
//    [aqp getVoice:0].freq = freq0Slider.value * 1000.;
//      [aqp getVoice:0].speed = freq0Slider.value * 2.;
}

-(IBAction)setAmp0:(id)sender
{
//      [aqp getVoice:0].amp = amp0Slider.value;
}

-(IBAction)setFreq1:(id)sender
{
//    [aqp getVoice:1].freq = freq1Slider.value * 1000.;
//      [aqp getVoice:1].speed = freq1Slider.value * 2.;
}

-(IBAction)setAmp1:(id)sender
// WE NEED TO CHANGE THE AMPLITUDE LATER--------------------------------
{
    //[aqp getVoice:0].amp = amp1Slider.value;
}


-(IBAction)setCKey:(id)sender
{
    [aqp getVoice:1].fID = 1;
    [aqp getVoice:1].speed = 1.;
    [aqp getVoice:1].amp = 0.5;
    
    
    [aqp getVoice:0].freq = 261.626;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setCsKey:(id)sender
{
    [aqp getVoice:2].fID = 2;
    [aqp getVoice:2].speed = 1.;
    [aqp getVoice:2].amp = 0.5;

    [aqp getVoice:0].freq = 277.183;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setDKey:(id)sender
{
    [aqp getVoice:3].fID = 3;
    [aqp getVoice:3].speed = 1.;
    [aqp getVoice:3].amp = 0.5;

    [aqp getVoice:0].freq = 288.665;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setDsKey:(id)sender
{ 
    [aqp getVoice:4].fID = 4;
    [aqp getVoice:4].speed = 1.;
    [aqp getVoice:4].amp = 0.5;

    [aqp getVoice:0].freq = 311.127;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setEKey:(id)sender
{
    [aqp getVoice:5].fID = 5;
    [aqp getVoice:5].speed = 1.;
    [aqp getVoice:5].amp = 0.5;

    [aqp getVoice:0].freq = 329.628;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setFKey:(id)sender
{
    [aqp getVoice:6].fID = 6;
    [aqp getVoice:6].speed = 1.;
    [aqp getVoice:6].amp = 0.5;

    [aqp getVoice:0].freq = 349.228;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setFsKey:(id)sender
{
    
    [aqp getVoice:7].fID = 7;
    [aqp getVoice:7].speed = 1.;
    [aqp getVoice:7].amp = 0.5;

    [aqp getVoice:0].freq = 369.994;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setGKey:(id)sender
{
    [aqp getVoice:8].fID = 8;
    [aqp getVoice:8].speed = 1.;
    [aqp getVoice:8].amp = 0.5;

    [aqp getVoice:0].freq = 391.995;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setGsKey:(id)sender
{
    [aqp getVoice:9].fID = 9;
    [aqp getVoice:9].speed = 1.;
    [aqp getVoice:9].amp = 0.5;

    [aqp getVoice:0].freq = 415.305;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setAKey:(id)sender
{
    [aqp getVoice:10].fID = 10;
    [aqp getVoice:10].speed = 1.;
    [aqp getVoice:10].amp = 0.5;

    [aqp getVoice:0].freq = 440;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setAsKey:(id)sender
{
    [aqp getVoice:11].fID = 11;
    [aqp getVoice:11].speed = 1.;
    [aqp getVoice:11].amp = 0.5;

    [aqp getVoice:0].freq = 466.164;
    [aqp getVoice:0].amp = 0.1;
}
-(IBAction)setBKey:(id)sender
{
    [aqp getVoice:12].fID = 12;
    [aqp getVoice:12].speed = 1.;
    [aqp getVoice:12].amp = 0.5;

    [aqp getVoice:0].freq = 493.883;
    [aqp getVoice:0].amp = 0.1;
}

-(IBAction)releaseC:(id)sender
{
    [aqp getVoice:1].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseCs:(id)sender
{
    [aqp getVoice:2].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseD:(id)sender
{
    [aqp getVoice:3].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseDs:(id)sender
{
    [aqp getVoice:4].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseE:(id)sender
{
    [aqp getVoice:5].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseF:(id)sender
{
    [aqp getVoice:6].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseFs:(id)sender
{
    [aqp getVoice:7].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseG:(id)sender
{
    [aqp getVoice:8].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseGs:(id)sender
{
    [aqp getVoice:9].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseA:(id)sender
{
    [aqp getVoice:10].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseAs:(id)sender
{
    [aqp getVoice:11].amp = 0;
    [aqp getVoice:0].amp = 0;
}
-(IBAction)releaseB:(id)sender
{
    [aqp getVoice:12].amp = 0;
    [aqp getVoice:0].amp = 0;
}
@end
