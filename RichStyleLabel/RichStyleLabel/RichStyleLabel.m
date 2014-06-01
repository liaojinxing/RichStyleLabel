//
//  RichStyleLabel.m
//  RichStyleLabel
//
//  Created by liaojinxing on 14-6-1.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

#import "RichStyleLabel.h"

@implementation RichStyleLabel

#pragma mark - Link

- (void)setLinkAttributedText:(NSString *)text
{
  [self setLinkAttributedText:text linkAttributes:nil];
}

- (void)setLinkAttributedText:(NSString *)text linkAttributes:(NSDictionary *)attributesDict
{
  NSDataDetector *detector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypeLink
                                                             error:nil];
  [self setAttributedText:text withRegularExpression:detector attributes:attributesDict];
}

#pragma mark - Regualr Expression

- (void)setAttributedText:(NSString *)text
       withRegularPattern:(NSString *)pattern
               attributes:(NSDictionary *)attributesDict
{
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern
                                                                         options:0
                                                                           error:nil];
  [self setAttributedText:text withRegularExpression:regex attributes:attributesDict];
}

- (void)setAttributedText:(NSString *)text
    withRegularExpression:(NSRegularExpression *)expression
               attributes:(NSDictionary *)attributesDict
{
  NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];

  [expression enumerateMatchesInString:text
                               options:0
                                 range:NSMakeRange(0, [text length])
                            usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
     NSRange matchRange = [result range];
     if (attributesDict) {
       [attributedString addAttributes:attributesDict range:matchRange];
     }

     if ([result resultType] == NSTextCheckingTypeLink) {
       NSURL *url = [result URL];
       [attributedString addAttribute:NSLinkAttributeName value:url range:matchRange];
     }
   }];
  [self setAttributedText:attributedString];
}

@end
