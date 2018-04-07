//
//  ThemesViewController.m
//  TinkoffChat
//
//  Created by Александр on 07.04.18.
//  Copyright © 2018 TCS. All rights reserved.
//

#import "ThemesViewController.h"
#import <UIKit/UIKit.h>

@interface ThemesViewController ()
- (IBAction)firstThemeAction:(id)sender;
- (IBAction)secondThemeAction:(id)sender;
- (IBAction)thirdThemeAction:(id)sender;


@end

@implementation ThemesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.theme = [[Themes alloc] init];
    NSLog(@"%@", self.theme.theme1);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)firstThemeAction:(id)sender {
    [self.delegate themesViewController: self didSelectTheme: self.theme.theme1];
}

- (IBAction)secondThemeAction:(id)sender {
    [self.delegate themesViewController: self didSelectTheme: self.theme.theme2];
}

- (IBAction)thirdThemeAction:(id)sender {
    [self.delegate themesViewController: self didSelectTheme: self.theme.theme3];
}



- (void)dealloc {
    if(self.theme!=NULL){
        [self.theme release];
    }
    if(self.delegate!=NULL){
        [self.delegate release];
    }
    [super dealloc];
}
@end
