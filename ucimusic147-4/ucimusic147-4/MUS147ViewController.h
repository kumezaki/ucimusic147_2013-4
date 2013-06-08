//
//  MUS147ViewController.h
//  Music147_2013
//
//  Created by Kojiro Umezaki on 4/5/13.
//  Copyright (c) 2013 Kojiro Umezaki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MUS147Button.h"

@interface MUS147ViewController : UIViewController <UIAccelerometerDelegate>{

    // member variables here
    IBOutlet UISlider* freq0Slider;
    IBOutlet UISlider* amp0Slider;
    IBOutlet UISlider* freq1Slider;
    IBOutlet UISlider* amp1Slider;
    
    //notes
    IBOutlet UIButton* cKey;
    IBOutlet UIButton* csKey;
    IBOutlet UIButton* dKey;
    IBOutlet UIButton* dsKey;
    IBOutlet UIButton* eKey;
    IBOutlet UIButton* fKey;
    IBOutlet UIButton* fsKey;
    IBOutlet UIButton* gKey;
    IBOutlet UIButton* gsKey;
    IBOutlet UIButton* aKey;
    IBOutlet UIButton* asKey;
    IBOutlet UIButton* bKey;
}


@property (nonatomic, copy) UITapGestureRecognizer *doubleTouchGesture; //which is better copy or retain??
// methods here
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation;
-(IBAction)setFreq0:(id)sender;
-(IBAction)setAmp0:(id)sender;
-(IBAction)setFreq1:(id)sender;
-(IBAction)setAmp1:(id)sender;

-(IBAction)sampleRecStart:(id)sender;
-(IBAction)sampleRecStop:(id)sender;

-(IBAction)setCKey:(id)sender;
-(IBAction)setCsKey:(id)sender;
-(IBAction)setDKey:(id)sender;
-(IBAction)setDsKey:(id)sender;
-(IBAction)setEKey:(id)sender;
-(IBAction)setFKey:(id)sender;
-(IBAction)setFsKey:(id)sender;
-(IBAction)setGKey:(id)sender;
-(IBAction)setGsKey:(id)sender;
-(IBAction)setAKey:(id)sender;
-(IBAction)setAsKey:(id)sender;
-(IBAction)setBKey:(id)sender;

//releasing
-(IBAction)releaseC:(id)sender;
-(IBAction)releaseCs:(id)sender;
-(IBAction)releaseD:(id)sender;
-(IBAction)releaseDs:(id)sender;
-(IBAction)releaseE:(id)sender;
-(IBAction)releaseF:(id)sender;
-(IBAction)releaseFs:(id)sender;
-(IBAction)releaseG:(id)sender;
-(IBAction)releaseGs:(id)sender;
-(IBAction)releaseA:(id)sender;
-(IBAction)releaseAs:(id)sender;
-(IBAction)releaseB:(id)sender;

@end
