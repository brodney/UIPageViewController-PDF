UIPageViewController-PDF
========================

You can use this project to display a PDF with UIPageViewController.

------------------------

How can I add this to my own app?

1) Add the QuartzCore framework to your app project

2) Drag the following files into your app project:

    PageViewController.h
    PageViewController.m
    ContentViewController.h
    ContentViewController.m
    PDFScrollView.h
    PDFScrollView.m
    TiledPDFView.h
    TiledPDFView.m

The PageViewController class acts as the delegate and data source for the UIPageViewController. The ContentViewController class, which is shown as each page of the UIPageViewController,  creates an instance of PDFScrollView, which is responsible for rendering each PDF page (source code for PDFScrollView and TiledPDFView provided by Apple).

3) When you are ready to display the PDF, add this code:

    NSString *path = [[NSBundle mainBundle] pathForResource:@"Name" ofType:@"pdf"];
    PageViewController *page = [[PageViewController alloc] initWithPDFAtPath:path];
    [self presentViewController:page animated:YES completion:NULL];
    
------------------------

You are free to use and modify this project as long as you retain the copyright notices in the code.