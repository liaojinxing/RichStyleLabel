//
//  ExampleController.m
//  AutoLinkLabel
//
//  Created by liaojinxing on 14-5-29.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

#import "ExampleController.h"
#import "RichStyleLabel.h"

@interface ExampleController ()

@end

@implementation ExampleController


- (void)viewDidLoad
{
  [super viewDidLoad];
  
  RichStyleLabel *linkLabel = [[RichStyleLabel alloc] initWithFrame:CGRectMake(0, 100, 320, 100)];
  linkLabel.numberOfLines = 0;
  [linkLabel setLinkAttributedText:@"My home page is https://github.com/liaojinxing. "];
  [self.view addSubview:linkLabel];
  
  RichStyleLabel *regexLabel = [[RichStyleLabel alloc] initWithFrame:CGRectMake(0, 200, 320, 100)];
  regexLabel.numberOfLines = 0;
  NSDictionary* redTextAttributes = @{ NSForegroundColorAttributeName : [UIColor redColor]};
  [regexLabel setAttributedText:@"123Hello, world! " withRegularPattern:@"^[0-9]+" attributes:redTextAttributes];
  [self.view addSubview:regexLabel];
}

@end
