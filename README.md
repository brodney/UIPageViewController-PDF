UIPageViewController-PDF
========================

You can use this project to display a PDF with UIPageViewController.

------------------------

How do I add this to my own app?

1) Add QuartzCore.framework to your app project

2) Drag the following files into your app project:

    PageViewController.h
    PageViewController.m
    ContentViewController.h
    ContentViewController.m
    PDFScrolLView.h
    PDFScrollView.m
    TiledPDFView.h
    TiledPDFView.m

The PageViewController class above holds the UIPageViewController. The ContentViewController class creates an instance of PDFScrollView, which is responsible for rendering the PDF page (source code for PDFScrollView and TiledPDFView provided by Apple). ContentViewController is shown as each page in the UIPageViewController.

3) When you are ready to display the PDF, add this code:

    NSString *path = [[NSBundle mainBundle] pathForResource:@"Name" ofType:@"pdf"];
    PageViewController *page = [[PageViewController alloc] initWithPDFAtPath:path];
    [self presentViewController:page animated:YES completion:NULL];
