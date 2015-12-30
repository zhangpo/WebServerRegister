//
//  ViewController.m
//  WebServerRegister
//
//  Created by chensen on 15/10/20.
//  Copyright © 2015年 Choicesoft. All rights reserved.
//

#import "ViewController.h"
#import "MF_Base64Additions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _ShowData.text=@"请输入店名，设备数量，截止时间后生成编码";
    _ShowData.editable=NO;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonClick:(id)sender {
    NSDate *select  = [_stopDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateAndTime = [dateFormatter stringFromDate:select];
    NSString *string=[NSString stringWithFormat:@"%@,%@,%@",[_storeName.text base64String],[dateAndTime base64String],[_phoneNum.text base64String]];
    _ShowData.text=[string base64String];
    NSLog(@"%@",_ShowData.text);
    _ShowData.selectable=YES;
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@" 时间提示" message: dateAndTime delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//    [alert show];
}

@end
