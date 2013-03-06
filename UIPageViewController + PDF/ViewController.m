//
//  ViewController.m
//
//  Created by Jack Humphries on 12/29/12.
//  Copyright (c) 2012 Jack Humphries. All rights reserved.
//

#import "ViewController.h"

#import "PageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)openPDF {
    
    //NSString *path = [[NSBundle mainBundle] pathForResource:@"PDF" ofType:@"pdf"];
    //PageViewController *page = [[PageViewController alloc] initWithPDFAtPath:path];
	PageViewController *page = [[PageViewController alloc] initWithPDFFromWeb:@"http://www.cs.cornell.edu/courses/CS4758/2012sp/materials/hmm_paper_rabiner.pdf"];
    [self presentViewController:page animated:YES completion:NULL];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
