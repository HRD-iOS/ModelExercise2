//
//  TableView.m
//  Exercise2
//
//  Created by Yin Kokpheng on 11/6/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "TableView.h"
#import "Person.h"
#import "PersonDetail.h"

@interface TableView ()

@end

@implementation TableView

NSArray *contact;

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    Person *person1 = [[Person alloc]init];
    Person *person2 = [[Person alloc]init];
    Person *person3 = [[Person alloc]init];
    Person *person4 = [[Person alloc]init];
    Person *person5 = [[Person alloc]init];
    Person *person6 = [[Person alloc]init];
    
    contact  = [[NSArray alloc]init];
    [person1 setName:@"Dara"];
    [person1 setAge:20];
    
    [person2 setName:@"Ratha"];
    [person2 setAge:21];
    
    [person3 setName:@"Kokpheng"];
    [person3 setAge:22];
    
    [person4 setName:@"Thana"];
    [person4 setAge:23];
    
    [person5 setName:@"Teckchun"];
    [person5 setAge:24];
    
    [person6 setName:@"Poneary"];
    [person6 setAge:25];
    
    contact = [[NSArray alloc]initWithObjects:person1,person2,person3, person4, person5, person6, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [contact count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIndentifier = @"cell";
    
    UITableViewCell *cell= [_tbView dequeueReusableCellWithIdentifier:cellIndentifier forIndexPath:indexPath];
    
    cell.textLabel.text =[[contact objectAtIndex:indexPath.row] getName];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d >", [[contact objectAtIndex:indexPath.row] getAge]];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    [self performSegueWithIdentifier:@"personDetail" sender: [contact objectAtIndex:indexPath.row]];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PersonDetail *pd = segue.destinationViewController;
    pd.p = sender;
    
}


@end
