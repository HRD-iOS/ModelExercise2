//
//  TableView.h
//  Exercise2
//
//  Created by Yin Kokpheng on 11/6/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableView : UITableViewController<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tbView;
@end
