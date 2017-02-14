//
//  LPSCurrentPoliceSketch.m
//  PoliceSketch
//
//  Created by Dave Augerinos on 2017-02-13.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "LPSCurrentPoliceSketch.h"


@implementation LPSCurrentPoliceSketch
{
    NSArray *eyesFileNameArray;
    NSArray *noseFileNameArray;
    NSArray *mouthFileNameArray;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // Initialize arrays with file names
        eyesFileNameArray = @[@"eyes_1.jpg", @"eyes_2.jpg", @"eyes_3.jpg", @"eyes_4.jpg", @"eyes_5.jpg"];
        noseFileNameArray = @[@"nose_1.jpg", @"nose_2.jpg", @"nose_3.jpg", @"nose_4.jpg", @"nose_5.jpg"];
        mouthFileNameArray = @[@"mouth_1.jpg", @"mouth_2.jpg", @"mouth_3.jpg", @"mouth_4.jpg", @"mouth_5.jpg"];
    }
    return self;
}

-(NSString *)moveEyesForward {
    
    NSString *currentFileName;
    
    // go to start of array if current position is at end of array
    if(self.currentEyesIndex == (int)[eyesFileNameArray count] - 1) {
        self.currentEyesIndex = 0;
        currentFileName = eyesFileNameArray[self.currentEyesIndex];
    }
    
    else {
        // increase array position by 1
        self.currentEyesIndex++;
        currentFileName = eyesFileNameArray[self.currentEyesIndex];
    }
    
    return currentFileName;
}

-(NSString *)moveEyesBackward {
  
    NSString *currentFileName;
    
    // go to end of array if current position is at start of array
    if(self.currentEyesIndex == 0) {
        self.currentEyesIndex = (int)[eyesFileNameArray count] - 1 ;
        currentFileName = eyesFileNameArray[self.currentEyesIndex];
    }
    
    else {
        // decrease array position by 1
        self.currentEyesIndex--;
        currentFileName = eyesFileNameArray[self.currentEyesIndex];
    }
    
    return currentFileName;
}

-(NSString *)moveNoseForward {
    
    NSString *currentFileName;
    
    // go to start of array if current position is at end of array
    if(self.currentNoseIndex == (int)[noseFileNameArray count] - 1) {
        self.currentNoseIndex = 0;
        currentFileName = noseFileNameArray[self.currentNoseIndex];
    }
    
    else {
        // increase array position by 1
        self.currentNoseIndex++;
        currentFileName = noseFileNameArray[self.currentNoseIndex];
    }
    
    return currentFileName;
}

-(NSString *)moveNoseBackward {
    
    NSString *currentFileName;
    
    // go to end of array if current position is at start of array
    if(self.currentNoseIndex == 0) {
        self.currentNoseIndex = (int)[noseFileNameArray count] - 1;
        currentFileName = noseFileNameArray[self.currentNoseIndex];
    }
    
    else {
        // decrease array position by 1
        self.currentNoseIndex--;
        currentFileName = noseFileNameArray[self.currentNoseIndex];
    }
    
    return currentFileName;
}

-(NSString *)moveMouthForward {
    
    NSString *currentFileName;
    
    // go to start of array if current position is at end of array
    if(self.currentMouthIndex == (int)[mouthFileNameArray count] - 1) {
        self.currentMouthIndex = 0;
        currentFileName = mouthFileNameArray[self.currentMouthIndex];
    }
    
    else {
        // increase array position by 1
        self.currentMouthIndex++;
        currentFileName = mouthFileNameArray[self.currentMouthIndex];
    }
    
    return currentFileName;
}

-(NSString *)moveMouthBackward {
    
    NSString *currentFileName;
    
    // go to end of array if current position is at start of array
    if(self.currentMouthIndex == 0) {
        self.currentMouthIndex = (int)[mouthFileNameArray count] - 1;
        currentFileName = mouthFileNameArray[self.currentMouthIndex];
    }
    
    else {
        // decrease array position by 1
        self.currentMouthIndex--;
        currentFileName = mouthFileNameArray[self.currentMouthIndex];
    }
    
    return currentFileName;
}

-(NSString *)currentEyesImage {
    return eyesFileNameArray[self.currentEyesIndex];
}

-(NSString *)currentNoseImage {
    return noseFileNameArray[self.currentNoseIndex];
}

-(NSString *)currentMouthImage {
    return mouthFileNameArray[self.currentMouthIndex];
}

@end
