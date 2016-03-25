//
//  MyLoginViewController.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/22.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "MyLoginViewController.h"
#import "MySignViewController.h"
@interface MyLoginViewController ()
//手机号
@property (strong, nonatomic) IBOutlet UITextField *phoneTextField;
//密码
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation MyLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//取消
- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
//注册
- (IBAction)login:(id)sender {
    MySignViewController *sign = [[MySignViewController alloc] init];
    sign.title = @"忘记密码";
    
    [self presentViewController:sign animated:YES completion:nil];
}
//登录
- (IBAction)landing:(id)sender {
    NSLog(@"登录");
}
//手机验证码
- (IBAction)phoneButton:(id)sender {
    NSLog(@"手机验证码");
}
//忘记密码
- (IBAction)psaawordButton:(id)sender {
    NSLog(@"忘记密码");
}

@end
