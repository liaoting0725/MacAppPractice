//
//  AppDelegate.m
//  MacAppPractice
//
//  Created by 廖挺 on 2017/1/12.
//  Copyright © 2017年 liaoting. All rights reserved.
//

#import "AppDelegate.h"
#import "LTMasterViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (nonatomic, strong) IBOutlet LTMasterViewController *masterViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.masterViewController = [[LTMasterViewController alloc] init];
    [self.window.contentView addSubview:self.masterViewController.view];
    self.masterViewController.view.frame = self.window.contentView.bounds;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
