//
//  dictionnaireViewController.h
//  LeDictionnaire
//
//  Created by Icaro Camelo on 1/9/14.
//  Copyright (c) 2014 Icaro Camelo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface dictionnaireViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelSearch;
@property (weak, nonatomic) IBOutlet UITextField *textFieldWord;
@property (weak, nonatomic) IBOutlet UIButton *buttonSearch;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewBackground;
@end
