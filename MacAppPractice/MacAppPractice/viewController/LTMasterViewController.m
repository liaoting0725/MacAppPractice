//
//  LTMasterViewController.m
//  MacAppPractice
//
//  Created by 廖挺 on 2017/1/12.
//  Copyright © 2017年 liaoting. All rights reserved.
//

#import "LTMasterViewController.h"

static NSString *const identifier = @"TextColumn";

@interface LTMasterViewController () <NSTableViewDelegate, NSTableViewDataSource>
@property (weak) IBOutlet NSTableView *tableView;
@property (strong, nonatomic) NSArray *dataArray;
@end

@implementation LTMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = @[@"- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;",@"- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;",@"- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;"];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return self.dataArray.count;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    if ([tableColumn.identifier isEqualToString:identifier]) {
        NSString *str = self.dataArray[row];
        cellView.textField.stringValue = str;
    }
    return cellView;
}

@end
