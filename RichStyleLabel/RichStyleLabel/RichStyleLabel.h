//
//  RichStyleLabel.h
//  RichStyleLabel
//
//  Created by liaojinxing on 14-6-1.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RichStyleLabel : UILabel

#pragma mark - Link

- (void)setLinkAttributedText:(NSString *)text;

- (void)setLinkAttributedText:(NSString *)text linkAttributes:(NSDictionary *)attributesDict;

#pragma mark - Regualr Expression

- (void)setAttributedText:(NSString *)text
    withRegularExpression:(NSRegularExpression *)expression
               attributes:(NSDictionary *)attributesDict;

- (void)setAttributedText:(NSString *)text
       withRegularPattern:(NSString *)pattern
               attributes:(NSDictionary *)attributesDict;

- (void)setAttributedText:(NSString *)text withPatternAttributeDictionary:(NSDictionary *)dictionary;

@end
