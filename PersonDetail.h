//
//  PersonDetail.h
//  Exercise2
//
//  Created by Yin Kokpheng on 11/6/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface PersonDetail : UIViewController

@property(strong, nonatomic) Person *p;
@property (weak, nonatomic) IBOutlet UILabel *lableAge;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@end
