//
//  ContentViewController.h
//
//  Created by Jack Humphries on 3/20/12.
//  Copyright (c) 2012 Jack Humphries. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "PDFScrollView.h"

@class PDFScrollView;

@interface ContentViewController : UIViewController <UIScrollViewDelegate> {
    
    CGPDFDocumentRef thePDF;
    PDFScrollView *pdfScrollView;
    
}

-(id)initWithPDF:(CGPDFDocumentRef)pdf;

@property (nonatomic, strong) NSString *page;

@end
