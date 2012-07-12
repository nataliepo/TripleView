//
//  OuterViewController.h
//  TripleView
//
//  Created by Natalie Podrazik on 7/12/12.
//  Copyright (c) 2012 29th Street Publishing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OuterViewController : UIViewController {
    UIView * mainView;
    
}



+(BOOL)isPortrait;
-(void)updateActiveView;


@end
