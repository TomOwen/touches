//
//  HappinessViewController.m
//  Happiness
//
//  Created by Tom Owen on 4/28/12.
//  Copyright (c) 2012 Owen & Owen. All rights reserved.
//

#import "HappinessViewController.h"
#import "FaceView.h"
@interface HappinessViewController ()

@property (nonatomic, weak) IBOutlet FaceView *faceView;

@end

@implementation HappinessViewController

@synthesize happiness = _happiness;
@synthesize faceView = _faceView;

- (void) setHappiness:(int)happiness {
    _happiness = happiness;
    [self.faceView setNeedsDisplay]; // whenever happiness is set the setNeedsDisplay will be called
}
- (void) setFaceView:(FaceView *)faceView{
    _faceView = faceView;
    [self.faceView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.faceView action:@selector(pinch:)]];
}
                                        
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES; // allow for rotating
}

@end
