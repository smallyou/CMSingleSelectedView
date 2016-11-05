//
//  ViewController.m
//  CMSingleSelectedView
//
//  Created by 陈华 on 16/11/5.
//  Copyright © 2016年 com.chmn123.singleSelectedView. All rights reserved.
//

#import "ViewController.h"
#import "CMSingleSelectedController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)openSingleSelectedView {
    
    
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"haha" message:@"kk" preferredStyle:UIAlertControllerStyleActionSheet];
//    
//    [alert addAction:[UIAlertAction actionWithTitle:@"hahah" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        
//    }]];
//    
//
//    [self presentViewController:alert animated:YES completion:nil];

    
    
    CMSingleSelectedController *ssc = [[CMSingleSelectedController alloc]init];
    CMChoiceItem *item = [[CMChoiceItem alloc]init];
    item.title = @"本人预约";
    item.actionCallback = ^(){
        NSLog(@"本人预约");
    };
    [ssc addChoiceItem:item];
    
    CMChoiceItem *item1 = [[CMChoiceItem alloc]init];
    item1.title = @"为他人预约";
    item1.actionCallback = ^(){
        NSLog(@"为他人预约");
    };

    [ssc addChoiceItem:item1];
    
    
    CMChoiceItem *item3 = [CMChoiceItem itemWithTitle:@"取消" titleColor:[UIColor blueColor] action:^{
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
     [ssc addChoiceItem:item3];
    
    [self presentViewController:ssc animated:YES completion:nil];
    
    
    
    
    
    
    
    
}


@end
