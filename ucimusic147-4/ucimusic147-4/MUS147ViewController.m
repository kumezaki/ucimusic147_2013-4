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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)setFreq0:(id)sender
{
//    [aqp getVoice:0].freq = freq0Slider.value * 1000.;
    [aqp getVoice:0].speed = freq0Slider.value * 2.;
}

-(IBAction)setAmp0:(id)sender
{
    [aqp getVoice:0].amp = amp0Slider.value;
}

-(IBAction)setFreq1:(id)sender
{
//    [aqp getVoice:1].freq = freq1Slider.value * 1000.;
    [aqp getVoice:1].speed = freq1Slider.value * 2.;
}

-(IBAction)setAmp1:(id)sender
{
    NSLog(@"yo");
    [aqp getVoice:1].amp = amp1Slider.value;
}


-(IBAction)setCKey:(id)sender
{
    [aqp getVoice:1].freq = 261.626;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setCsKey:(id)sender
{
    [aqp getVoice:1].freq = 277.183;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setDKey:(id)sender
{
    [aqp getVoice:1].freq = 288.665;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setDsKey:(id)sender
{
    [aqp getVoice:1].freq = 311.127;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setEKey:(id)sender
{
    [aqp getVoice:1].freq = 329.628;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setFKey:(id)sender
{
    [aqp getVoice:1].freq = 349.228;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setFsKey:(id)sender
{
    [aqp getVoice:1].freq = 369.994;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setGKey:(id)sender
{
    [aqp getVoice:1].freq = 391.995;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setGsKey:(id)sender
{
    [aqp getVoice:1].freq = 415.305;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setAKey:(id)sender
{
    [aqp getVoice:1].freq = 440;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setAsKey:(id)sender
{
    [aqp getVoice:1].freq = 466.164;
    [aqp getVoice:1].amp = 1.;
}
-(IBAction)setBKey:(id)sender
{
    [aqp getVoice:1].freq = 493.883;
    [aqp getVoice:1].amp = 1.;
}

@end
