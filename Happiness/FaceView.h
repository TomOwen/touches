//
//  FaceView.h
//  Happiness
//
//  Created by Tom Owen on 4/28/12.
//  Copyright (c) 2012 Owen & Owen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaceView : UIView

//make pinch public
- (void)pinch:(UIPinchGestureRecognizer *)gesture;

@property CGFloat scale;

@end
