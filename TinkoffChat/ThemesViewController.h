//
//  ThemesViewController.h
//  TinkoffChat
//
//  Created by Александр on 07.04.18.
//  Copyright © 2018 TCS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThemesViewControllerDelegate.h"
#import "Themes.h"

@interface ThemesViewController : UIViewController

@property (strong, nonatomic) id<ThemesViewControllerDelegate> delegate;
@property (strong, nonatomic) Themes* theme;

@end
