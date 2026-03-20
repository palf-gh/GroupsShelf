//
//  FixGroupsPanelViewController.m
//  GroupsShelf
//
//  Created by pkolchanov on 04.03.2025.
//

#import "RenameGroupsViewController.h"
#import "GroupsShelf.h"

@implementation RenameGroupsViewController

#define Loc(key) [[NSBundle bundleForClass:[self class]] localizedStringForKey:(key) value:@"" table:nil]

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Localization
    [[self includeLeftGroupCheckbox] setTitle:Loc(@"Left Groups")];
    [[self includeRightGroupCheckbox] setTitle:Loc(@"Right Groups")];
    [[self useRegexCheckbox] setTitle:Loc(@"Match using regular expressions")];
    
    [(NSTextField *)[self.view viewWithTag:106] setStringValue:Loc(@"Find")];
    [(NSTextField *)[self.view viewWithTag:107] setStringValue:Loc(@"Replace with")];
    [(NSButton *)[self.view viewWithTag:108] setTitle:Loc(@"Rename Groups")];
}

- (void)updateLabelsForVertical:(BOOL)isVertical {
    if (isVertical) {
        [[self includeLeftGroupCheckbox] setTitle:Loc(@"Top Groups")];
        [[self includeRightGroupCheckbox] setTitle:Loc(@"Bottom Groups")];
    } else {
        [[self includeLeftGroupCheckbox] setTitle:Loc(@"Left Groups")];
        [[self includeRightGroupCheckbox] setTitle:Loc(@"Right Groups")];
    }
}

- (IBAction)renameGroupsActtion:(id)sender {
    NSString *findString = [[self findTextField] stringValue];
    NSString *replaceString = [[self replaceTextField] stringValue];
    BOOL left = [[self includeLeftGroupCheckbox] state] == NSControlStateValueOn;
    BOOL right = [[self includeRightGroupCheckbox] state] == NSControlStateValueOn;
    BOOL useRegex = [[self useRegexCheckbox] state] == NSControlStateValueOn;
    [KerningService find:findString andReplaceWith:replaceString incluceLeftGroups:left inclureRightGroups:right useRegex:useRegex];
    [[self parent] updateKerningData];
}
@end
