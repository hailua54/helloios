//
//  GameController.m
//  helloios
//
//  Created by Nguyen Ngoc Vu Anh on 3/27/17.
//  Copyright © 2017 Nguyen Ngoc Vu Anh. All rights reserved.
//

#import "GameController.h"

@interface GameController ()
@property (weak, nonatomic) IBOutlet UIButton *exitBtn;
@end

@implementation GameController
@synthesize msgFromSender;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _labelTf.text = msgFromSender;
    
    // using addTaget ----------------------------------
    [_exitBtn addTarget:self action:@selector(onExit:) forControlEvents:UIControlEventTouchUpInside];
    
    
    //[_exitBtn setMultipleTouchEnabled:YES];
    //[_exitBtn setUserInteractionEnabled:YES];
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(onExit2:)];
    // using addGestureRecognizer ----------------------
    //[_exitBtn addGestureRecognizer:singleTap];

}

- (void)onExit: (UIButton*)sender {
    // do your stuff here
    NSLog(@"onExit ==");
    exit(0);
}

- (void)onExit2:(UITapGestureRecognizer *)recognizer
{
    NSLog(@"onExit2 ==");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)update
{
    NSLog(@"update");
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
