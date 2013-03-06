//
//  PageViewController.h
//
//  Created by Jack Humphries on 3/20/12
//  Copyright (c) 2012 Jack Humphries. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentViewController.h"

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
- (id)initWithPDFFromWeb:(NSString *)webUrl;
	
@end
