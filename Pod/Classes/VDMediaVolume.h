//
//  VDMediaVolume.h
//  MediaPlayer-VolumeControl
//
//  Created by vilyever on 15/8/11.
//  Copyright (c) 2015年 vilyever. All rights reserved.
//

#import <UIKit/UIKit.h>


@class VDMediaVolume;


@interface VDMediaVolume : NSObject


#pragma mark Methods
#pragma mark Public Class Method
+ (float)currentVolume; // 获取当前音量

+ (void)setVolume:(float)volume; // 设置音量

+ (void)raiseVolume:(float)deltaVolume; // 增加音量

#pragma mark Public Instance Method

@end
