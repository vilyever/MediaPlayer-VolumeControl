//
//  VDMediaVolume.m
//  MediaPlayer-VolumeControl
//
//  Created by vilyever on 15/8/11.
//  Copyright (c) 2015年 vilyever. All rights reserved.
//

#import "VDMediaVolume.h"

#import <MediaPlayer/MediaPlayer.h>


@interface VDMediaVolume ()

@end


@implementation VDMediaVolume

#pragma mark Overrides
- (instancetype)init {
    self = [super init];
    if (self) {
        [self initial];
    }
    
    return self;
}

- (void)dealloc {
    
}


#pragma mark Initial
- (void)initial {
    
}


#pragma mark Accessors
#pragma mark Private Accessors

#pragma mark Public Accessors


#pragma mark Delegates


#pragma mark Methods
#pragma mark Private Class Method

#pragma mark Private Instance Method

#pragma mark Public Class Method
+ (UISlider *)volumeSlider
{
    static UISlider *VolumeSlider = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        MPVolumeView *volumeView = [[MPVolumeView alloc] init];
        for (UIView *view in volumeView.subviews) {
            if ([view isKindOfClass:[UISlider class]]) {
                VolumeSlider = (UISlider *)view;
                break;
            }
        }
    });
    
    return VolumeSlider;
}

+ (float)currentVolume
{
    return [self volumeSlider].value;
}

+ (void)setVolume:(float)volume
{
    [[self volumeSlider] setValue:volume animated:NO];
    [[self volumeSlider] sendActionsForControlEvents:UIControlEventTouchUpInside];
}

+ (void)raiseVolume:(float)deltaVolume
{
    [self setVolume:[self currentVolume] + deltaVolume];
}

#pragma mark Public Instance Method


@end
