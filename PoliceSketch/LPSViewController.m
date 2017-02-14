//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "LPSCurrentPoliceSketch.h"

@interface LPSViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyesImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;
@property (strong, nonatomic) LPSCurrentPoliceSketch *currentPoliceSketch;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Here is where you will create the buttons & image views and add them to the view.
    
    self.currentPoliceSketch = [[LPSCurrentPoliceSketch alloc] init];
    
    UIImage *eyes = [UIImage imageNamed:[self.currentPoliceSketch currentEyesImage]];
    self.eyesImageView.image = eyes;
    
    UIImage *nose = [UIImage imageNamed:[self.currentPoliceSketch currentNoseImage]];
    self.noseImageView.image = nose;
    
    UIImage *mouth = [UIImage imageNamed:[self.currentPoliceSketch currentMouthImage]];
    self.mouthImageView.image = mouth;
}

- (IBAction)moveEyesImageForward:(UIButton *)sender {
    NSString *imageFileName = [_currentPoliceSketch moveEyesForward];
    UIImage *eyes = [UIImage imageNamed:imageFileName];
    self.eyesImageView.image = eyes;
}

- (IBAction)moveEyesImageBackward:(UIButton *)sender {
    NSString *imageFileName = [_currentPoliceSketch moveEyesBackward];
    UIImage *eyes = [UIImage imageNamed:imageFileName];
    self.eyesImageView.image = eyes;
}

- (IBAction)moveNoseImageForward:(UIButton *)sender {
    NSString *imageFileName = [_currentPoliceSketch moveNoseForward];
    UIImage *nose = [UIImage imageNamed:imageFileName];
    self.noseImageView.image = nose;
}

- (IBAction)moveNoseImageBackward:(UIButton *)sender {
    NSString *imageFileName = [_currentPoliceSketch moveNoseBackward];
    UIImage *nose = [UIImage imageNamed:imageFileName];
    self.noseImageView.image = nose;
}

- (IBAction)moveMouthImageForward:(UIButton *)sender {
    NSString *imageFileName = [_currentPoliceSketch moveMouthForward];
    UIImage *mouth = [UIImage imageNamed:imageFileName];
    self.mouthImageView.image = mouth;
}

- (IBAction)moveMouthImageBackward:(UIButton *)sender {
    NSString *imageFileName = [_currentPoliceSketch moveMouthBackward];
    UIImage *mouth = [UIImage imageNamed:imageFileName];
    self.mouthImageView.image = mouth;
}

@end
