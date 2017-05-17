//
//  GameController.h
//  helloios
//
//  Created by Nguyen Ngoc Vu Anh on 3/27/17.
//  Copyright © 2017 Nguyen Ngoc Vu Anh. All rights reserved.
//

#import <UIKit/UIKit.h>
// declare public properties (getter)
@interface GameController : UIViewController
{
    NSString* msgFromSender;
}
@property (strong, nonatomic) NSString* msgFromSender;
@property (weak, nonatomic) IBOutlet UILabel *labelTf;
@end
