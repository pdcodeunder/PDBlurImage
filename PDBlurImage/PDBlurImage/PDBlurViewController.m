//
//  PDBlurViewController.m
//  PDBlurImage
//
//  Created by 彭懂 on 16/9/5.
//  Copyright © 2016年 彭懂. All rights reserved.
//

#import "PDBlurViewController.h"
#import "PDBlurImageEffects.h"

@interface PDBlurViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backImage;

@end

@implementation PDBlurViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    _backImage.frame = self.view.bounds;
}

- (IBAction)lightClicked:(id)sender {
    _backImage.image = [PDBlurImageEffects pd_imageEffectLightFromImage:[UIImage imageNamed:@"test"]];
}

- (IBAction)extraLightClicked:(id)sender {
    _backImage.image = [PDBlurImageEffects pd_imageEffectExtraLightFromImage:[UIImage imageNamed:@"test"]];
}

- (IBAction)darkClicked:(id)sender {
    _backImage.image = [PDBlurImageEffects pd_imageEffectDarkFromImage:[UIImage imageNamed:@"test"]];
}

- (IBAction)customClicked:(id)sender {
    _backImage.image = [PDBlurImageEffects pd_imageEffectTintFromImage:[UIImage imageNamed:@"test"] andEffectColor:[UIColor purpleColor]];
}

@end
