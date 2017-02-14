//
//  LPSCurrentPoliceSketch.h
//  PoliceSketch
//
//  Created by Dave Augerinos on 2017-02-13.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LPSCurrentPoliceSketch : NSObject

@property (nonatomic, assign) int currentEyesIndex;
@property (nonatomic, assign) int currentNoseIndex;
@property (nonatomic, assign) int currentMouthIndex;

-(NSString *)moveEyesForward;
-(NSString *)moveEyesBackward;
-(NSString *)moveNoseForward;
-(NSString *)moveNoseBackward;
-(NSString *)moveMouthForward;
-(NSString *)moveMouthBackward;
-(NSString *)currentEyesImage;
-(NSString *)currentNoseImage;
-(NSString *)currentMouthImage;

@end
