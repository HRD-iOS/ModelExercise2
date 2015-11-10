//
//  PersonDetail.m
//  Exercise2
//
//  Created by Yin Kokpheng on 11/6/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "PersonDetail.h"

@interface PersonDetail ()

@end

@implementation PersonDetail

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _labelName.text = _p.getName;
    _lableAge.text = [NSString stringWithFormat:@"%d",_p.getAge];//////
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
