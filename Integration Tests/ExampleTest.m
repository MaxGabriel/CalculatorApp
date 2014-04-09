//
//  ExampleTest.m
//  CalculatorApp
//
//  Created by Maximilian Tagher on 4/4/14.
//  Copyright (c) 2014 Tagher. All rights reserved.
//

#import <Subliminal/Subliminal.h>
#import "ViewController.h"

@interface ExampleTest : SLTest

@end

@implementation ExampleTest

- (void)setUpTest {
	// Navigate to the part of the app being exercised by the test cases,
	// initialize SLElements common to the test cases, etc.
}

- (void)tearDownTest {
	// Navigate back to "home", if applicable.
}

- (void)testCase {
    
    SLTextField *textField = [SLTextField elementWithAccessibilityLabel:kMathFieldAccessibilityLabel];
    [textField setText:@"2 + 2"];
    
    SLButton *button = [SLButton elementWithAccessibilityLabel:kSolveButtonAccessibilityLabel];
    [button tap];
    
    SLElement *resultLabel = [SLElement elementWithAccessibilityIdentifier:kResultFieldAccessibilityIdentifier];
    NSString *value = [resultLabel value];
    SLAssertTrue([value isEqualToString:@"4"], @"2 + 2 should equal 4");
}

@end
