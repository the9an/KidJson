//
//  People.h
//  Sample
//
//  Created by NguyenTheQuan on 2015/12/01.
//  Copyright © 2015年 Kid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KidJson.h"

@interface People : KidJson

@property (readonly, retain)NSNumber *id;
@property (readonly, retain)NSNumber *yearOld;
@property (readonly, retain)NSString *name;

- (void)getYearOld;

@end
