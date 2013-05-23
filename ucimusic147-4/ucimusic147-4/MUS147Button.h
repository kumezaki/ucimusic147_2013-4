//
//  MUS147Button.h
//  ucimusic147-4
//
//  Created by Lab User on 5/22/13.
//  Copyright (c) 2013 UCI Music 147. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MUS147Button : UIButton
{
    NSString* key;
}

@property (copy, nonatomic) NSString* key;
- (id)initWithFrame:(CGRect)frame;

@end
