//
//  MySignViewController.m
//  MoEShoppings
//
//  Created by lanou3g on 16/3/24.
//  Copyright © 2016年 dr.m. All rights reserved.
//

#import "MySignViewController.h"

@interface MySignViewController ()

@property (strong, nonatomic) IBOutlet UITextField *phoneTextField;
@end

@implementation MySignViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//获取短信验证码
- (IBAction)phoneButton:(id)sender {
}
//取消

- (IBAction)button:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
