//
//  JsonReaderUtil.m
//  ChallengeJapanese
//
//  Created by NguyenTheQuan on 2015/07/20.
//  Copyright (c) 2015年 Home. All rights reserved.
//

#import "JsonReaderUtil.h"

@implementation JsonReaderUtil

+ (NSData *)getDataWithFileName:(NSString *)fileName
{
    NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"json"];
    NSError *error = nil;
    NSData *data = [NSData dataWithContentsOfFile:path options:NSDataReadingMappedIfSafe error:&error];
    if (error) {
        return nil;
    }
    
    return data;
}

+ (NSDictionary *)getDictionaryWithFileName:(NSString *)fileName
{
    NSData *data = [JsonReaderUtil getDataWithFileName:fileName];
    if (!data) {
        return nil;
    }
    
    NSError *error = nil;
    id object = [NSJSONSerialization
                 JSONObjectWithData:data
                 options:0
                 error:&error];
    
    if(error) {
        NSLog(@"JSON was malformed, act appropriately here");
    }
    else
    {
        NSLog(@"CLASS %@", NSStringFromClass([object class]));
    }
    
    // the originating poster wants to deal with dictionaries;
    // assuming you do too then something like this is the first
    // validation step:
    if([object isKindOfClass:[NSDictionary class]])
    {
        NSDictionary *dic = object;
        return dic;
    }
    else
    {
        NSLog(@"ERROR: there's no guarantee that the outermost object in a JSON"
            "packet will be a dictionary; if we get here then it wasn't,"
            "so 'object' shouldn't be treated as an NSDictionary; probably"
            "you need to report a suitable error condition");
        return  nil;
    }
}

@end
