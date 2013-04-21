//
//  DetailViewController.m
//  MasterDetail
//
//  Created by Peter Pan on 4/20/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UITextView *poemTextView;


- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if([self.detailItem isEqualToString:@"詩人0號"])
    {
        self.navigationItem.title = @"清平調";
        self.poemTextView.text = @"雲想衣裳花想容，\n"
        "春風拂檻露華濃。\n"
        "若非群玉山頭見，\n"
        "會向瑤臺月下逢。";
    }
    else if([self.detailItem isEqualToString:@"詩人1號"])
    {
        self.navigationItem.title = @"錦瑟";
        self.poemTextView.text = @"錦瑟無端五十絃，\n"
        "一絃一柱思華年。\n"
        "莊生曉夢迷蝴蝶，\n"
        "望帝春心託杜鵑。\n"
        "滄海月明珠有淚，\n"
        "藍田日暖玉生煙。\n"
        "此情可待成追憶，\n"
        "只是當時已惘然。";
    }
    else
    {
        self.navigationItem.title = @"水調歌頭";
        self.poemTextView.text = @"明月幾時有，把酒問青天?\n"
        "不知天上宮闕，今夕是何年。\n"
        "我欲乘風歸去，又恐瓊樓玉宇，\n"
        "高處不勝寒。\n"
        "起舞弄清影，何似在人間。\n"
        "轉朱閣，低綺戶，照無眠。\n"
        "不應有恨，何事長向別時圓。\n"
        "人有悲歡離合，月有陰晴圓缺，\n"
        "此事古難全。\n"
        "但願人長久，千里共嬋娟。";
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
