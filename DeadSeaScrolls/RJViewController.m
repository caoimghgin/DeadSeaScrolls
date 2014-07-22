//
//  RJViewController.m
//  DeadSeaScrolls
//
//  Created by Kevin Muldoon on 7/22/14.
//  Copyright (c) 2014 RobotJackalope. All rights reserved.
//

#import "RJViewController.h"
#import "UIView+AutoLayout.h"

@interface RJViewController ()

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UIView *contentView;
@property (strong, nonatomic) UILabel *label_1;
@property (strong, nonatomic) UILabel *label_2;
@property (strong, nonatomic) UILabel *label_3;
@property (strong, nonatomic) UILabel *label_4;
@property (strong, nonatomic) UILabel *label_5;
@property (strong, nonatomic) UILabel *label_6;
@property (strong, nonatomic) UILabel *label_7;
@property (strong, nonatomic) UILabel *label_8;
@property (strong, nonatomic) UILabel *label_9;
@property (strong, nonatomic) UILabel *label_10;

@end

@implementation RJViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        self.title = @"Dead Sea Scrolls";
        
        self.scrollView = [UIScrollView newAutoLayoutView];
        [self.scrollView setBackgroundColor:[UIColor yellowColor]];
        [self.scrollView setUserInteractionEnabled:YES];
        
        self.contentView = [UIView newAutoLayoutView];
        [self.contentView setBackgroundColor:[UIColor blueColor]];
        
        self.label_1 = [UILabel newAutoLayoutView];
        [self.label_1 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_1 setTextColor:[UIColor whiteColor]];
        [self.label_1 setText:@"Hello"];
        
        self.label_2 = [UILabel newAutoLayoutView];
        [self.label_2 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_2 setTextColor:[UIColor whiteColor]];
        [self.label_2 setText:@"Hello"];
        
        self.label_3 = [UILabel newAutoLayoutView];
        [self.label_3 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_3 setTextColor:[UIColor whiteColor]];
        [self.label_3 setText:@"Hello"];
        
        self.label_4 = [UILabel newAutoLayoutView];
        [self.label_4 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_4 setTextColor:[UIColor whiteColor]];
        [self.label_4 setText:@"Hello"];
        
        self.label_5 = [UILabel newAutoLayoutView];
        [self.label_5 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_5 setTextColor:[UIColor whiteColor]];
        [self.label_5 setText:@"Hello"];
        
        self.label_6 = [UILabel newAutoLayoutView];
        [self.label_6 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_6 setTextColor:[UIColor whiteColor]];
        [self.label_6 setText:@"Hello"];
        
        self.label_7 = [UILabel newAutoLayoutView];
        [self.label_7 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_7 setTextColor:[UIColor whiteColor]];
        [self.label_7 setText:@"Hello"];
        
        self.label_8 = [UILabel newAutoLayoutView];
        [self.label_8 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_8 setTextColor:[UIColor whiteColor]];
        [self.label_8 setText:@"Hello"];
        
        self.label_9 = [UILabel newAutoLayoutView];
        [self.label_9 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_9 setTextColor:[UIColor whiteColor]];
        [self.label_9 setText:@"Hello"];
        
        self.label_10 = [UILabel newAutoLayoutView];
        [self.label_10 setFont:[UIFont fontWithName:@"HelveticaNeue-Thin" size:32.0f]];
        [self.label_10 setTextColor:[UIColor whiteColor]];
        [self.label_10 setText:@"Hello"];
        
    }
    NSLog(@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.contentView addSubview:self.label_1];
    [self.contentView addSubview:self.label_2];
    [self.contentView addSubview:self.label_3];
    [self.contentView addSubview:self.label_4];
    [self.contentView addSubview:self.label_5];
    [self.contentView addSubview:self.label_6];
    [self.contentView addSubview:self.label_7];
    [self.contentView addSubview:self.label_8];
    [self.contentView addSubview:self.label_9];
    [self.contentView addSubview:self.label_10];
    
    [self.scrollView addSubview:self.contentView];
    [self.view addSubview:self.scrollView];
    
    [self updateViewConstraints];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateViewConstraints
{
    
    [self.label_1 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_1 autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.contentView];
    [self.label_1 autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.contentView];

    [self.label_2 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_2 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.label_1];

    [self.label_3 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_3 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.label_2];

    [self.label_4 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_4 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.label_3];

    [self.label_5 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_5 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.label_4];

    [self.label_6 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_6 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.label_5];
    
    [self.label_7 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_7 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.label_6];
    
    [self.label_8 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_8 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.label_7];
    
    [self.label_9 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_9 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.label_8];
    
    [self.label_10 autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:self.contentView];
    [self.label_10 autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.label_9];
    [self.label_10 autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:self.contentView];

    [self.scrollView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero];
    [self.contentView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero];
    [self.contentView autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeading ofView:self.view];
    [self.contentView autoPinEdge:ALEdgeRight toEdge:ALEdgeTrailing ofView:self.view];
    
    [super updateViewConstraints];
    
    NSLog(@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));

}

@end
