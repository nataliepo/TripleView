//
//  OuterViewController.m
//  TripleView
//
//  Created by Natalie Podrazik on 7/12/12.
//  Copyright (c) 2012 29th Street Publishing. All rights reserved.
//

#import "OuterViewController.h"
#import "ViewController.h"


@interface OuterViewController ()

@end

@implementation OuterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self updateActiveView];    
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)updateActiveView {
    
    NSString * activeNib = nil;
    


    
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        activeNib = @"ViewController_iPhone";
        
    } else {
        if ([OuterViewController isPortrait]) {
            activeNib = @"ViewController_iPad_P";
        }
        
        else {
            activeNib = @"ViewController_iPad_L";
        }
        
    }
    
    ViewController * vc = [[ViewController alloc] initWithNibName:activeNib bundle:nil];
    
    mainView = vc.view;
    
    
    [self.view addSubview:mainView];
    
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    [self updateActiveView];
    
    return YES; 
}

    
             
             
+(BOOL)isPortrait {
     UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
     
     if ((orientation == UIDeviceOrientationLandscapeLeft) || (orientation == UIDeviceOrientationLandscapeRight)) {
         return NO;
     }
     
     return YES;    
 }

@end
