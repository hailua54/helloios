//
//  ViewController.m
//  helloios
//
//  Created by Nguyen Ngoc Vu Anh on 3/23/17.
//  Copyright © 2017 Nguyen Ngoc Vu Anh. All rights reserved.
//

#import "StartController.h"
#import "GameController.h"

// declare private properties
@interface StartController()
@property (weak, nonatomic) IBOutlet UILabel *introTf;
@end

@implementation StartController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    // active this this property for manual positioning and sizing
    _introTf.translatesAutoresizingMaskIntoConstraints = YES;
    _introTf.center = CGPointMake(screenRect.size.width*0.5, screenRect.size.height*0.25);
    //[_introTf setFrame:CGRectMake(_introTf.frame.origin.x, 0, _introTf.frame.size.width, _introTf.frame.size.height)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    GameController* des = segue.destinationViewController;
    des.msgFromSender = @"message from StartScene";
}
@end
