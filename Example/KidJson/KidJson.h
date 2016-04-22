//
//  KidJson.h
//
//  Created by NguyenTheQuan on 2015/07/20.
//  Copyright (c) 2015年 Home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KidJson : NSObject

- (id)initWithDictionary:(NSDictionary *)jsonDictionary error:(NSError **)error;
- (id)initWithData:(NSData *)jsonData error:(NSError **)error;

@end
