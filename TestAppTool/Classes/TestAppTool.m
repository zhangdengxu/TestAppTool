//
//  TestAppTool.h
//
//
//  Created by edz on 2021/02/20.
//  Copyright © 2021年 FinHub. All rights reserved.
//

#import "TestAppTool.h"

@interface TestAppTool ()

@end

@implementation TestAppTool

// 数字
+ (BOOL)isStringContainNumberWith:(NSString *)str{
    NSRegularExpression *numberRegular = [NSRegularExpression regularExpressionWithPattern:@"[0-9]" options:NSRegularExpressionCaseInsensitive error:nil];
    NSInteger count = [numberRegular numberOfMatchesInString:str options:NSMatchingReportProgress range:NSMakeRange(0, str.length)];
    //count是str中包含[0-9]数字的个数，只要count>0，说明str中包含数字
    if (count > 0) {
        return YES;
    }
    return NO;
}


@end
