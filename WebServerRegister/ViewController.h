//
//  ViewController.h
//  WebServerRegister
//
//  Created by chensen on 15/10/20.
//  Copyright © 2015年 Choicesoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *storeName;
@property (weak, nonatomic) IBOutlet UITextField *phoneNum;
@property (weak, nonatomic) IBOutlet UIDatePicker *stopDate;

@property (weak, nonatomic) IBOutlet UITextView *ShowData;
@end

