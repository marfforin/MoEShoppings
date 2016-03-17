

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.view.frame = [UIScreen mainScreen].bounds;
    //创建webView
    self.webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //NSURL *url = [NSURL URLWithString:self.dic[@"share_url"]];
    NSURL *url = [NSURL URLWithString:self.url];

    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    //使用webView来加载请求内容
    [self.webView loadRequest:request];
    self.view.backgroundColor = [UIColor redColor];
    self.view =  self.webView;
    
    //[self.view addSubview:webView];
    
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
