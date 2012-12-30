//
//  ContentViewController.m
//  The Record
//
//  Created by Jack Humphries on 3/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ContentViewController.h"

@implementation ContentViewController

- (id)initWithPDF:(CGPDFDocumentRef)pdf {
    
    thePDF = pdf;
    
    self = [super initWithNibName:nil bundle:nil];
    
    return self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
            
    // Create our PDFScrollView and add it to the view controller.
    CGPDFPageRef PDFPage = CGPDFDocumentGetPage(thePDF, [_page intValue]);
    pdfScrollView = [[PDFScrollView alloc] initWithFrame:self.view.frame];
    [pdfScrollView setPDFPage:PDFPage];
    [self.view addSubview:pdfScrollView];
    
    self.view.backgroundColor = [UIColor underPageBackgroundColor];
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    pdfScrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
}

-(void)dealloc {
    
    _page = nil;
    pdfScrollView = nil;
    
}

- (void)viewDidUnload
{
    
    [super viewDidUnload];
    
    _page = nil;
    pdfScrollView = nil;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end