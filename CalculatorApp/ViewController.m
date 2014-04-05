//
//  ViewController.m
//  CalculatorApp
//
//  Created by Maximilian Tagher on 4/1/14.
//  Copyright (c) 2014 Tagher. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *mathField;
@property (strong, nonatomic) IBOutlet UIButton *solveButton;
@property (strong, nonatomic) IBOutlet UILabel *resultField;


@end

@implementation ViewController

NSString * const kMathFieldAccessibilityLabel = @"expression field";
NSString * const kSolveButtonAccessibilityLabel = @"solve";

NSString * const kResultFieldAccessibilityIdentifier = @"result field";

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    self.mathField.accessibilityLabel = kMathFieldAccessibilityLabel;
//    self.solveButton.accessibilityLabel = kSolveButtonAccessibilityLabel;
    
//    self.resultField.accessibilityIdentifier = kResultFieldAccessibilityIdentifier;
}

- (IBAction)solveExpression:(UIButton *)sender {
    @try {
        NSNumber *result = [[NSExpression expressionWithFormat:self.mathField.text,nil] expressionValueWithObject:nil context:nil];
        self.resultField.text = [NSString stringWithFormat:@"%@",result];
    }
    @catch (NSException *exception) {
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"Bad expression" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil] show];
    }
}

@end
