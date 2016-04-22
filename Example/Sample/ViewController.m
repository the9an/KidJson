//
//  ViewController.m
//  Sample
//
//  Created by NguyenTheQuan on 2015/12/01.
//  Copyright © 2015年 Kid. All rights reserved.
//

#import "ViewController.h"
#import "JsonReaderUtil.h"
#import "People.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *dic = [JsonReaderUtil getDictionaryWithFileName:@"people"];
    if (dic != nil) {
        People *people = [[People alloc] initWithDictionary:dic error:nil];
        NSLog(@"PEOPLE name: %@, year old: %d", people.name, [people.yearOld intValue]);
        [people getYearOld];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
