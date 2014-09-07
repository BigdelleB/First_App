//
//  ViewController.h
//  App
//
//  Created by Brian Bigdelle on 8/18/14.
//  Copyright (c) 2014 Brian Bigdelle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *label;
    IBOutlet UILabel *instructions;
    
    int score;
    Boolean on;
    int x;

}

-(void)timerstart;

-(IBAction)leftClickedButton:(id)sender;

-(IBAction)rightClickedButton:(id)sender;

-(IBAction)restartButton:(id)sender;

@end

