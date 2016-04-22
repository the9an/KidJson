//
//  JsonReaderUtil.h
//  ChallengeJapanese
//
//  Created by NguyenTheQuan on 2015/07/20.
//  Copyright (c) 2015年 Home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonReaderUtil : NSObject

+ (NSData *)getDataWithFileName:(NSString *)fileName;
+ (NSDictionary *)getDictionaryWithFileName:(NSString *)fileName;

@end
