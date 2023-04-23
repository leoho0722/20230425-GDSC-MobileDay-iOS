//
//  ViewController.h
//  BMIWithUIKitObjc
//
//  Created by Leo Ho on 2023/4/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(weak, nonatomic) IBOutlet UILabel *lb;
@property(weak, nonatomic) IBOutlet UITextField *txfHeight;
@property(weak, nonatomic) IBOutlet UITextField *txfWeight;
@property(weak, nonatomic) IBOutlet UIButton *btnCalc;

@end

