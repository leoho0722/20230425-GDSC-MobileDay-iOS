//
//  ViewController.m
//  BMIWithUIKitObjc
//
//  Created by Leo Ho on 2023/4/22.
//

#import "ViewController.h"

@interface ViewController ()

@property double bmi;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btnCalcClicked:(UIButton *)sender {
    [[self view] endEditing:TRUE];
    double height = [[_txfHeight text] doubleValue];
    double weight = [[_txfWeight text] doubleValue];
    _bmi = weight / pow(height, 2);
    _lb.text = [[_lb text] stringByAppendingString:[NSString stringWithFormat:@"%.6f", _bmi]];
}

@end
