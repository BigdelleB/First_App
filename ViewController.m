//
//  ViewController.m
//  App
//
//  Created by Brian Bigdelle on 8/18/14.
//  Copyright (c) 2014 Brian Bigdelle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //label.text = [NSString stringWithFormat:@"Score is %i" ,score];
    score = 0;
    [self instructions];
 
    
}

-(IBAction)restartButton:(id)sender
{
    score=0;
    [self instructions];
    label.text= [NSString stringWithFormat:@"Score:0"];
    
    /*ISSU: TRYING TO PRINT 
     */
    //instructions.text=[NSString stringWithFormat:@"You lose"];
    self.view.backgroundColor= [UIColor whiteColor];
}
   


-(IBAction)leftClickedButton:(id)sender
{
    [self randColorgen];
    
    if(on==true)
    {
        [self didScore];
    label.text = [NSString stringWithFormat:@"Score: %i", score];
        
    }

    else if(on==false)
    {
        //label.text= [NSString stringWithFormat:@"YOU LOSE!!!"];
        [self reset];
    }
    
    [self instructions];

}


-(IBAction)rightClickedButton:(id)sender
{
    [self randColorgen];
   
    if(on==false)
    {
    [self didScore];
    label.text= [NSString stringWithFormat:@"Score: %i", score];
    }
    
    
    else if(on==true)
    {
        //label.text= [NSString stringWithFormat:@"YOU LOSE!!!"];
        [self reset];
    }
     [self instructions];
    
  

}



-(void) reset
{
    score=0;
   
    label.text= [NSString stringWithFormat:@"Thanks for playing, click restart to try again"];
    
}


-(void)instructions
{
    x=arc4random() % 10;
    
    //if x is less than 5, the left button should be clicked
    if(x<5)
    {
        instructions.text= [NSString stringWithFormat:@"Click Left"];
        on=true;
    }
    
    else
    {
        instructions.text= [NSString stringWithFormat:@"Click Right"];
        on=false;
    }
    
}

-(void)didScore
{
    score += 10;
    label.text = [NSString stringWithFormat:@"Score: %i", score];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)randColorgen
{
    int color= arc4random() %10;
    if(color==0)
        self.view.backgroundColor=[UIColor redColor];
    else if(color==1)
        self.view.backgroundColor= [UIColor blueColor];
    else if(color==2)
        self.view.backgroundColor= [UIColor greenColor];
    else if (color==3)
        self.view.backgroundColor= [UIColor yellowColor];
    else if(color==4)
        self.view.backgroundColor= [UIColor grayColor];
    else if(color==5)
        self.view.backgroundColor=[UIColor purpleColor];
    else if(color==6)
        self.view.backgroundColor=[UIColor orangeColor];
    else if(color==7)
        self.view.backgroundColor=[UIColor magentaColor];
    else if(color==8)
        self.view.backgroundColor=[UIColor brownColor];
    else if(color==9)
        self.view.backgroundColor=[UIColor lightGrayColor];
    else if(color==10)
        self.view.backgroundColor=[UIColor orangeColor];
    
}

@end
