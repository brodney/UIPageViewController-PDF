//
//  ViewController.h
//  The Recorder
//
//  Created by Jack Humphries on 3/20/12
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentViewController.h"
#import "ViewController.h"

@class ContentViewController, UIPrintInteractionController;

@interface PageViewController : UIViewController <UIPageViewControllerDelegate, UIPageViewControllerDataSource> {
    
    UIPageViewController *thePageViewController;
    ContentViewController *contentViewController;
    NSMutableArray *modelArray;
    CGPDFDocumentRef PDFDocument;
    int currentIndex;
    int totalPages;
    
}

-(id)initWithPDFAtPath:(NSString *)path;

@end
