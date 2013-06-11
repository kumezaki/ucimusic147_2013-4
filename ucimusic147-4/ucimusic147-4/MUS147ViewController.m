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

#import "MUS147AQRecorder.h"
extern MUS147AQRecorder* aqr;

@interface MUS147ViewController () 

@end

@implementation MUS147ViewController

@synthesize doubleTouchGesture;

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[UIAccelerometer sharedAccelerometer] setDelegate:self];
    
//    // Handle two finger touch?
    doubleTouchGesture = [[UITapGestureRecognizer alloc]init];
    [doubleTouchGesture setNumberOfTouchesRequired:2];
    [self.view addGestureRecognizer:doubleTouchGesture];
}

-(void)accelerometer: (UIAccelerometer *)accelerometer didAccelerate: (UIAcceleration *)acceleration
{
//    NSLog(@"%f %f,%f", acceleration.x, acceleration.y, acceleration.z);
    float speed;
    float amp;
//    if([doubleTouchGesture numberOfTouches] > 0){
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
//if(acceleration.z > 0.0)
//{
//    amp = acceleration.z;
//    
//    if(amp < 0.5)
//        amp = 0.5;
//}
//
//else if(acceleration.z == 0)
//amp = 0.5;
//
//else if(acceleration.z < 0)
//{
//    amp = -1 * acceleration.z;
//    
//    if(amp < 0.5)
//        amp = 0.5;
//}
//for (int i = 1; i <= 12; i++) {
//    [aqp getVoice:i].amp = amp;
//}
//    }
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

-(IBAction)sampleRecStart:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [sender setImage:[UIImage imageNamed:@"PianoKey_Large_RED.png"] forState:UIControlStateHighlighted];
        [aqr start];
    }
}

-(IBAction)sampleRecStop:(id)sender
{
    [sender setImage:[UIImage imageNamed:@"PianoKey_Large_BLU.png"] forState:UIControlStateHighlighted]; // note black keys mapped to this will get wrong picture...!
    [aqr stop];

}

-(IBAction)setCKey:(id)sender
{
aqr.voice = (MUS147Voice_Sample_Mem*)[aqp getRecordVoice:1];
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [sender setImage:[UIImage imageNamed:@"PianoKey_Large_RED.png"] forState:UIControlStateHighlighted];
        [aqr start];
        [aqp getVoice:0].freq = 261.626;
        [aqp getVoice:0].amp = 0.8;
        
    }
    else {
        [aqp getVoice:1].fID = 1;
        [aqp getVoice:1].speed = 1.;
        [aqp getVoice:1].amp = 0.5;
    }
}
-(IBAction)setCsKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
//        [aqp getVoice:0].freq = 277.183;
//        [aqp getVoice:0].amp = 0.1;
    }
    else {
        [aqp setVoice:2:[aqr voice]];
        [aqp getVoice:2].fID = 2;
        [aqp getVoice:2].speed = 1.;
        [aqp getVoice:2].amp = 0.5;
    }
}
-(IBAction)setDKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
//        [aqp getVoice:0].freq = 288.665;
//        [aqp getVoice:0].amp = 0.1;
    }
    else {
        [aqp setVoice:3:[aqr voice]];
        [aqp getVoice:3].fID = 3;
        [aqp getVoice:3].speed = 1.;
        [aqp getVoice:3].amp = 0.5;
    }
}
-(IBAction)setDsKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [aqp getVoice:0].freq = 311.127;
        [aqp getVoice:0].amp = 0.1;
    }
    else {
        [aqp setVoice:4:[aqr voice]];
        [aqp getVoice:4].fID = 4;
        [aqp getVoice:4].speed = 1.;
        [aqp getVoice:4].amp = 0.5;
    }
}
-(IBAction)setEKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [aqp getVoice:0].freq = 329.628;
        [aqp getVoice:0].amp = 0.1;
    }
    else {
        [aqp setVoice:5:[aqr voice]];
        [aqp getVoice:5].fID = 5;
        [aqp getVoice:5].speed = 1.;
        [aqp getVoice:5].amp = 0.5;
    }
}
-(IBAction)setFKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [aqp getVoice:0].freq = 349.228;
        [aqp getVoice:0].amp = 0.1;
    }
    else {
        [aqp setVoice:6:[aqr voice]];
        [aqp getVoice:6].fID = 6;
        [aqp getVoice:6].speed = 1.;
        [aqp getVoice:6].amp = 0.5;
    }
}
-(IBAction)setFsKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [aqp getVoice:0].freq = 369.994;
        [aqp getVoice:0].amp = 0.1;    
    }
    else {
        [aqp setVoice:7:[aqr voice]];
        [aqp getVoice:7].fID = 7;
        [aqp getVoice:7].speed = 1.;
        [aqp getVoice:7].amp = 0.5;
    }
}
-(IBAction)setGKey:(id)sender
{    
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [aqp getVoice:0].freq = 391.995;
        [aqp getVoice:0].amp = 0.1;
    }
    else {
        [aqp setVoice:8:[aqr voice]];
        [aqp getVoice:8].fID = 8;
        [aqp getVoice:8].speed = 1.;
        [aqp getVoice:8].amp = 0.5;
    }
}
-(IBAction)setGsKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [aqp getVoice:0].freq = 415.305;
        [aqp getVoice:0].amp = 0.1;
    }
    else {
        [aqp setVoice:9:[aqr voice]];
        [aqp getVoice:9].fID = 9;
        [aqp getVoice:9].speed = 1.;
        [aqp getVoice:9].amp = 0.5;
    }
}
-(IBAction)setAKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [aqp getVoice:0].freq = 440;
        [aqp getVoice:0].amp = 0.1;
    }
    else {
        [aqp setVoice:10:[aqr voice]];
        [aqp getVoice:10].fID = 10;
        [aqp getVoice:10].speed = 1.;
        [aqp getVoice:10].amp = 0.5;
    }
}
-(IBAction)setAsKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [aqp getVoice:0].freq = 466.164;
        [aqp getVoice:0].amp = 0.1;
    }
    else {
        [aqp setVoice:11:[aqr voice]];
        [aqp getVoice:11].fID = 11;
        [aqp getVoice:11].speed = 1.;
        [aqp getVoice:11].amp = 0.5;
    }
}
-(IBAction)setBKey:(id)sender
{
    if ([doubleTouchGesture numberOfTouches] == 2) {
        [aqp getVoice:0].freq = 493.883;
        [aqp getVoice:0].amp = 0.8;
    }
    else {
        [aqp setVoice:12:[aqr voice]];
        [aqp getVoice:12].fID = 12;
        [aqp getVoice:12].speed = 1.;
        [aqp getVoice:12].amp = 0.5;
    }
}

-(IBAction)releaseC:(id)sender
{
    [sender setImage:[UIImage imageNamed:@"PianoKey_Large_BLU.png"] forState:UIControlStateHighlighted];
    [aqr stop];
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

- (void)viewDidUnload {
    [super viewDidUnload];
}
@end
