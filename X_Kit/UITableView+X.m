//
//  UITableView+X.m
//  XKitDemo
//
//  Created by liuxu on 2019/3/14.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import "UITableView+X.h"


@interface UITableView () <UITableViewDelegate, UITableViewDataSource>

#pragma mark - delegate properties
@property (nonatomic, copy) void (^x_willDisplayCellBlock)(UITableView*, UITableViewCell*, NSIndexPath*);
@property (nonatomic, copy) void (^x_willDisplayHeaderViewBlock)(UITableView*, UIView*, NSInteger);
@property (nonatomic, copy) void (^x_willDisplayFooterViewBlock)(UITableView*, UIView*, NSInteger);
@property (nonatomic, copy) void (^x_didEndDisplayingCellBlock)(UITableView*, UITableViewCell*, NSIndexPath*);
@property (nonatomic, copy) void (^x_didEndDisplayingHeaderViewBlock)(UITableView*, UIView*, NSInteger);
@property (nonatomic, copy) void (^x_didEndDisplayingFooterViewBlock)(UITableView*, UIView*, NSInteger);
@property (nonatomic, copy) NSInteger (^x_heightForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) NSInteger (^x_heightForHeaderInSectionBlock)(UITableView*, NSInteger);
@property (nonatomic, copy) NSInteger (^x_heightForFooterInSectionBlock)(UITableView*, NSInteger);
@property (nonatomic, copy) NSInteger (^x_estimatedHeightForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) NSInteger (^x_estimatedHeightForHeaderInSectionBlock)(UITableView*, NSInteger);
@property (nonatomic, copy) NSInteger (^x_estimatedHeightForFooterInSectionBlock)(UITableView*, NSInteger);
@property (nonatomic, copy) UIView* (^x_viewForHeaderInSectionBlock)(UITableView*, NSInteger);
@property (nonatomic, copy) UIView* (^x_viewForFooterInSectionBlock)(UITableView*, NSInteger);
@property (nonatomic, copy) UITableViewCellAccessoryType (^x_accessoryTypeForRowWithIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) void (^x_accessoryButtonTappedForRowWithIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) BOOL (^x_shouldHighlightRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) void (^x_didHighlightRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) void (^x_didUnhighlightRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) NSIndexPath* (^x_willSelectRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) NSIndexPath* (^x_willDeselectRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) void (^x_didSelectRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) void (^x_didDeselectRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) UITableViewCellEditingStyle (^x_editingStyleForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) NSString* (^x_titleForDeleteConfirmationButtonForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) NSArray<UITableViewRowAction*>* (^x_editActionsForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) UISwipeActionsConfiguration* (^x_leadingSwipeActionsConfigurationForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) UISwipeActionsConfiguration* (^x_trailingSwipeActionsConfigurationForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) BOOL (^x_shouldIndentWhileEditingRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) void (^x_willBeginEditingRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) void (^x_didEndEditingRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) NSIndexPath* (^x_targetIndexPathForMoveFromRowAtIndexPathBlock)(UITableView*, NSIndexPath*, NSIndexPath*);


@property (nonatomic, copy) NSInteger (^x_indentationLevelForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) BOOL (^x_shouldShowMenuForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) BOOL (^x_canPerformActionBlock)(UITableView*, SEL, NSIndexPath*, id);
@property (nonatomic, copy) void (^x_performActionBlock)(UITableView*, SEL, NSIndexPath*, id);
@property (nonatomic, copy) BOOL (^x_canFocusRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) BOOL (^x_shouldUpdateFocusInContextBlock)(UITableView*, UITableViewFocusUpdateContext*);
@property (nonatomic, copy) BOOL (^x_didUpdateFocusInContextBlock)(UITableView*, UITableViewFocusUpdateContext*, UIFocusAnimationCoordinator*);
@property (nonatomic, copy) NSIndexPath* (^x_indexPathForPreferredFocusedViewInTableViewBlock)(UITableView*);
@property (nonatomic, copy) BOOL (^x_shouldSpringLoadRowAtIndexPathBlock)(UITableView*, NSIndexPath*, id<UISpringLoadedInteractionContext>);

#pragma mark - datasource properties
@property (nonatomic, copy) NSInteger (^x_numOfRowsInSectionBlock)(UITableView*, NSInteger);
@property (nonatomic, copy) UITableViewCell* (^x_cellForRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) NSInteger (^x_numofSectionsInTableViewBlock)(UITableView*);
@property (nonatomic, copy) NSString* (^x_titleForHeaderInSectionBlock)(UITableView*, NSInteger);
@property (nonatomic, copy) NSString* (^x_titleForFooterInSectionBlock)(UITableView*, NSInteger);
@property (nonatomic, copy) BOOL (^x_canEditRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) BOOL (^x_canMoveRowAtIndexPathBlock)(UITableView*, NSIndexPath*);
@property (nonatomic, copy) NSArray<NSString*>* (^x_sectionIndexTitlesForTableViewBlock)(UITableView*);
@property (nonatomic, copy) NSInteger (^x_sectionForSectionIndexTitleBlock)(UITableView*, NSString*, NSInteger);
@property (nonatomic, copy) void (^x_commitEditingStyleBlock)(UITableView*, UITableViewCellEditingStyle, NSIndexPath*);
@property (nonatomic, copy) void (^x_moveRowAtIndexPathBlock)(UITableView*, NSIndexPath*, NSIndexPath*);

@end

static void* UITABLEVIEW_WILL_DISPLAY_CELL_KEY = &UITABLEVIEW_WILL_DISPLAY_CELL_KEY;
static void* UITABLEVIEW_WILL_DISPLAY_HEADERVIEW_KEY = &UITABLEVIEW_WILL_DISPLAY_HEADERVIEW_KEY;
static void* UITABLEVIEW_WILL_DISPLAY_FOOTERVIEW_KEY = &UITABLEVIEW_WILL_DISPLAY_FOOTERVIEW_KEY;
static void* UITABLEVIEW_DID_END_DISPLAYING_CELL_KEY = &UITABLEVIEW_DID_END_DISPLAYING_CELL_KEY;
static void* UITABLEVIEW_DID_END_DISPLAYING_HEADERVIEW_KEY = &UITABLEVIEW_DID_END_DISPLAYING_HEADERVIEW_KEY;
static void* UITABLEVIEW_DID_END_DISPLAYING_FOOTERVIEW_KEY = &UITABLEVIEW_DID_END_DISPLAYING_FOOTERVIEW_KEY;
static void* UITABLEVIEW_HEIGHT_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_HEIGHT_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_HEIGHT_FOR_HEADER_INSECTION_KEY = &UITABLEVIEW_HEIGHT_FOR_HEADER_INSECTION_KEY;
static void* UITABLEVIEW_HEIGHT_FOR_FOOTER_INSECTION_KEY = &UITABLEVIEW_HEIGHT_FOR_FOOTER_INSECTION_KEY;
static void* UITABLEVIEW_ESTIMATED_HEIGHT_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_ESTIMATED_HEIGHT_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_ESTIMATED_HEIGHT_FOR_HEADER_IN_SECTION_KEY = &UITABLEVIEW_ESTIMATED_HEIGHT_FOR_HEADER_IN_SECTION_KEY;
static void* UITABLEVIEW_ESTIMATED_HEIGHT_FOR_FOOTER_IN_SECTION_KEY = &UITABLEVIEW_ESTIMATED_HEIGHT_FOR_FOOTER_IN_SECTION_KEY;
static void* UITABLEVIEW_VIEW_FOR_HEADER_IN_SECTION_KEY = &UITABLEVIEW_VIEW_FOR_HEADER_IN_SECTION_KEY;
static void* UITABLEVIEW_VIEW_FOR_FOOTER_IN_SECTION_KEY = &UITABLEVIEW_VIEW_FOR_FOOTER_IN_SECTION_KEY;
static void* UITABLEVIEW_ASSESSORY_FOR_ROW_WITH_INDEXPATH_KEY = &UITABLEVIEW_ASSESSORY_FOR_ROW_WITH_INDEXPATH_KEY;
static void* UITABLEVIEW_ASSESSORY_BUTTON_TAPPED_FOR_ROW_WITH_INDEXPATH_KEY = &UITABLEVIEW_ASSESSORY_BUTTON_TAPPED_FOR_ROW_WITH_INDEXPATH_KEY;
static void* UITABLEVIEW_SHOULD_HIGHLIGHT_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_SHOULD_HIGHLIGHT_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_DID_HIGHLIGHT_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_DID_HIGHLIGHT_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_DID_UNHIGHLIGHT_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_DID_UNHIGHLIGHT_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_WILL_SELECT_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_WILL_SELECT_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_WILL_DESELECT_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_WILL_DESELECT_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_DID_SELECT_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_DID_SELECT_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_DID_DESELECT_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_DID_DESELECT_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_EDITING_STYLE_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_EDITING_STYLE_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_TITLE_FOR_DELETE_CONFIRMATION_BUTTON_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_TITLE_FOR_DELETE_CONFIRMATION_BUTTON_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_EDIT_ACTIONS_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_EDIT_ACTIONS_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_LEADING_SWIPE_ACTIONS_CONFIGURATION_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_LEADING_SWIPE_ACTIONS_CONFIGURATION_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_TRAILING_SWIPE_ACTIONS_CONFIGURATION_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_TRAILING_SWIPE_ACTIONS_CONFIGURATION_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_SHOULD_INDENT_WHILE_EDITING_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_SHOULD_INDENT_WHILE_EDITING_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_WILL_BEGIN_EDITING_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_WILL_BEGIN_EDITING_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_DID_END_EDITING_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_DID_END_EDITING_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_TARGET_INDEXPATH_FOR_MOVE_FROM_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_TARGET_INDEXPATH_FOR_MOVE_FROM_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_INDENTATION_LEVEL_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_INDENTATION_LEVEL_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_SHOULD_SHOW_MENU_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_SHOULD_SHOW_MENU_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_CAN_PERFORM_ACTION_KEY = &UITABLEVIEW_CAN_PERFORM_ACTION_KEY;
static void* UITABLEVIEW_PERFORM_ACTION_KEY = &UITABLEVIEW_PERFORM_ACTION_KEY;
static void* UITABLEVIEW_CAN_FOCUS_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_CAN_FOCUS_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_SHOULD_UPDATE_FOCUS_IN_CONTEXT_KEY = &UITABLEVIEW_SHOULD_UPDATE_FOCUS_IN_CONTEXT_KEY;
static void* UITABLEVIEW_DID_UPDATE_FOCUS_IN_CONTEXT_KEY = &UITABLEVIEW_DID_UPDATE_FOCUS_IN_CONTEXT_KEY;
static void* UITABLEVIEW_INDEXPATH_FOR_PREFERRED_FOCUSED_VIEW_IN_TABLEVIEW_KEY = &UITABLEVIEW_INDEXPATH_FOR_PREFERRED_FOCUSED_VIEW_IN_TABLEVIEW_KEY;
static void* UITABLEVIEW_SHOULD_SPRING_LOAD_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_SHOULD_SPRING_LOAD_ROW_AT_INDEXPATH_KEY;


static void* UITABLEVIEW_NUM_OF_ROWS_IN_SECTION_KEY = &UITABLEVIEW_NUM_OF_ROWS_IN_SECTION_KEY;
static void* UITABLEVIEW_CELL_FOR_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_CELL_FOR_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_NUM_OF_SECTION_IN_TABLEVIEW_KEY = &UITABLEVIEW_NUM_OF_SECTION_IN_TABLEVIEW_KEY;
static void* UITABLEVIEW_TITLE_FOR_HEADER_IN_SECTION_KEY = &UITABLEVIEW_TITLE_FOR_HEADER_IN_SECTION_KEY;
static void* UITABLEVIEW_TITLE_FOR_FOOTER_IN_SECTION_KEY = &UITABLEVIEW_TITLE_FOR_FOOTER_IN_SECTION_KEY;
static void* UITABLEVIEW_CAN_EDIT_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_CAN_EDIT_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_CAN_MOVE_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_CAN_MOVE_ROW_AT_INDEXPATH_KEY;
static void* UITABLEVIEW_SECTION_INDEX_TITLES_FOR_TABLEVIEW_KEY = &UITABLEVIEW_SECTION_INDEX_TITLES_FOR_TABLEVIEW_KEY;
static void* UITABLEVIEW_SECTION_FOR_SECTION_INDEX_TITLE_KEY = &UITABLEVIEW_SECTION_FOR_SECTION_INDEX_TITLE_KEY;
static void* UITABLEVIEW_COMMIT_EDITING_STYLE_KEY = &UITABLEVIEW_COMMIT_EDITING_STYLE_KEY;
static void* UITABLEVIEW_MOVE_ROW_AT_INDEXPATH_KEY = &UITABLEVIEW_MOVE_ROW_AT_INDEXPATH_KEY;

@implementation UITableView (X)

- (xta_Block)x_delegate {
    xta_Block block = ^UITableView* (id<UITableViewDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
    return block;
}

- (xta_Block)x_dataSource {
    xta_Block block = ^UITableView* (id<UITableViewDataSource> dataSource) {
        self.dataSource = dataSource;
        return self;
    };
    return block;
}

- (xta_Block)x_rowHeight {
    xta_Block block = ^UITableView* (NSNumber *rowHeight) {
        self.rowHeight = rowHeight.floatValue;
        return self;
    };
    return block;
}

- (xta_Block)x_sectionHeaderHeight {
    xta_Block block = ^UITableView* (NSNumber *height) {
        self.sectionHeaderHeight = height.floatValue;
        return self;
    };
    return block;
}

- (xta_Block)x_sectionFooterHeight {
    xta_Block block = ^UITableView* (NSNumber *height) {
        self.sectionFooterHeight = height.floatValue;
        return self;
    };
    return block;
}

- (xta_Block)x_estimatedRowHeight {
    xta_Block block = ^UITableView* (NSNumber *height) {
        self.estimatedRowHeight = height.floatValue;
        return self;
    };
    return block;
}

- (xta_Block)x_estimatedSectionHeaderHeight {
    xta_Block block = ^UITableView* (NSNumber *height) {
        self.estimatedSectionHeaderHeight = height.floatValue;
        return self;
    };
    return block;
}

- (xta_Block)x_estimatedSectionFooterHeight {
    xta_Block block = ^UITableView* (NSNumber *height) {
        self.estimatedSectionFooterHeight = height.floatValue;
        return self;
    };
    return block;
}

- (xta_Block)x_separatorInset {
    xta_Block block = ^UITableView* (NSValue *value) {
        self.separatorInset = value.UIEdgeInsetsValue;
        return self;
    };
    return block;
}

- (xta_Block)x_separatorInsetReference {
    xta_Block block = ^UITableView* (NSNumber *num) {
        self.separatorInsetReference = num.integerValue;
        return self;
    };
    return block;
}

- (xta_Block)x_backgroundView {
    xta_Block block = ^UITableView* (UIView *view) {
        self.backgroundView = view;
        return self;
    };
    return block;
}

- (xta_Block)x_editing {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.editing = value.boolValue;
        return self;
    };
    return block;
}

- (xta_Block)x_allowsSelection {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.allowsSelection = value.boolValue;
        return self;
    };
    return block;
}

- (xta_Block)x_allowsSelectionDuringEditing {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.allowsSelectionDuringEditing = value.boolValue;
        return self;
    };
    return block;
}

- (xta_Block)x_allowsMultipleSelection {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.allowsMultipleSelection = value.boolValue;
        return self;
    };
    return block;
}

- (xta_Block)x_allowsMultipleSelectionDuringEditing {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.allowsMultipleSelectionDuringEditing = value.boolValue;
        return self;
    };
    return block;
}

- (xta_Block)x_sectionIndexMinimumDisplayRowCount {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.sectionIndexMinimumDisplayRowCount = value.integerValue;
        return self;
    };
    return block;
}

- (xta_Block)x_sectionIndexColor {
    xta_Block block = ^UITableView* (UIColor *value) {
        self.sectionIndexColor = value;
        return self;
    };
    return block;
}

- (xta_Block)x_sectionIndexBackgroundColor {
    xta_Block block = ^UITableView* (UIColor *value) {
        self.sectionIndexBackgroundColor = value;
        return self;
    };
    return block;
}

- (xta_Block)x_sectionIndexTrackingBackgroundColor {
    xta_Block block = ^UITableView* (UIColor *value) {
        self.sectionIndexTrackingBackgroundColor = value;
        return self;
    };
    return block;
}

- (xta_Block)x_separatorStyle {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.separatorStyle = value.integerValue;
        return self;
    };
    return block;
}

- (xta_Block)x_separatorColor {
    xta_Block block = ^UITableView* (UIColor *value) {
        self.separatorColor = value;
        return self;
    };
    return block;
}

- (xta_Block)x_separatorEffect {
    xta_Block block = ^UITableView* (UIVisualEffect *value) {
        self.separatorEffect = value;
        return self;
    };
    return block;
}

- (xta_Block)x_cellLayoutMarginsFollowReadableWidth {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.cellLayoutMarginsFollowReadableWidth = value.boolValue;
        return self;
    };
    return block;
}

- (xta_Block)x_insetsContentViewsToSafeArea {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.insetsContentViewsToSafeArea = value.boolValue;
        return self;
    };
    return block;
}

- (xta_Block)x_tableHeaderView {
    xta_Block block = ^UITableView* (UIView *value) {
        self.tableHeaderView = value;
        return self;
    };
    return block;
}

- (xta_Block)x_tableFooterView {
    xta_Block block = ^UITableView* (UIView *value) {
        self.tableFooterView = value;
        return self;
    };
    return block;
}

- (xta_Block)x_remembersLastFocusedIndexPath {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.remembersLastFocusedIndexPath = value.boolValue;
        return self;
    };
    return block;
}

- (xta_Block)x_dragInteractionEnabled {
    xta_Block block = ^UITableView* (NSNumber *value) {
        self.dragInteractionEnabled = value.boolValue;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))x_registerCell {
    UITableView *(^block)(Class, NSString*) = ^UITableView* (Class class, NSString* cellID) {
        [self registerClass:class forCellReuseIdentifier:cellID];
        return self;
    };
    return block;
}


#pragma mark - delegate

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, UITableViewCell * _Nonnull, NSIndexPath * _Nonnull)))x_willDisplayCell {
    UITableView* (^block)(void (^)(UITableView*, UITableViewCell*, NSIndexPath*)) = ^UITableView* (void(^delegateBlock)(UITableView*, UITableViewCell*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_willDisplayCellBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, UIView * _Nonnull, NSInteger)))x_willDisplayHeaderView {
    UITableView* (^block)(void (^)(UITableView*, UIView*, NSInteger)) = ^UITableView* (void(^delegateBlock)(UITableView*, UIView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_willDisplayHeaderViewBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, UIView * _Nonnull, NSInteger)))x_willDisplayFooterView {
    UITableView* (^block)(void (^)(UITableView*, UIView*, NSInteger)) = ^UITableView* (void(^delegateBlock)(UITableView*, UIView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_willDisplayFooterViewBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, UITableViewCell * _Nonnull, NSIndexPath * _Nonnull)))x_didEndDisplayingCell {
    UITableView* (^block)(void (^)(UITableView*, UITableViewCell*, NSIndexPath*)) = ^UITableView* (void(^delegateBlock)(UITableView*, UITableViewCell*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_didEndDisplayingCellBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, UIView * _Nonnull, NSInteger)))x_didEndDisplayingHeaderView {
    UITableView* (^block)(void (^)(UITableView*, UIView*, NSInteger)) = ^UITableView* (void(^delegateBlock)(UITableView*, UIView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_didEndDisplayingHeaderViewBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, UIView * _Nonnull, NSInteger)))x_didEndDisplayingFooterView {
    UITableView* (^block)(void (^)(UITableView*, UIView*, NSInteger)) = ^UITableView* (void(^delegateBlock)(UITableView*, UIView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_didEndDisplayingFooterViewBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_heightForRowAtIndexPath {
    UITableView* (^block)(NSInteger (^)(UITableView*, NSIndexPath*)) = ^UITableView* (NSInteger(^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_heightForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull, NSInteger)))x_heightForHeaderInSection {
    UITableView* (^block)(NSInteger (^)(UITableView*, NSInteger)) = ^UITableView* (NSInteger(^delegateBlock)(UITableView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_heightForHeaderInSectionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull, NSInteger)))x_heightForFooterInSection {
    UITableView* (^block)(NSInteger (^)(UITableView*, NSInteger)) = ^UITableView* (NSInteger(^delegateBlock)(UITableView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_heightForFooterInSectionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_estimatedHeightForRowAtIndexPath {
    UITableView* (^block)(NSInteger (^)(UITableView*, NSIndexPath*)) = ^UITableView* (NSInteger(^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_estimatedHeightForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull, NSInteger)))x_estimatedHeightForHeaderInSection {
    UITableView* (^block)(NSInteger (^)(UITableView*, NSInteger)) = ^UITableView* (NSInteger(^delegateBlock)(UITableView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_estimatedHeightForFooterInSectionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull, NSInteger)))x_estimatedHeightForFooterInSection {
    UITableView* (^block)(NSInteger (^)(UITableView*, NSInteger)) = ^UITableView* (NSInteger(^delegateBlock)(UITableView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_estimatedHeightForFooterInSectionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(UIView * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSInteger)))x_viewForHeaderInSection {
    UITableView* (^block)(UIView* (^)(UITableView*, NSInteger)) = ^UITableView* (UIView* (^delegateBlock)(UITableView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_viewForHeaderInSectionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(UIView * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSInteger)))x_viewForFooterInSection {
    UITableView* (^block)(UIView* (^)(UITableView*, NSInteger)) = ^UITableView* (UIView* (^delegateBlock)(UITableView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_viewForFooterInSectionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(UITableViewCellAccessoryType (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_accessoryTypeForRowWithIndexPath {
    UITableView* (^block)(UITableViewCellAccessoryType (^)(UITableView*, NSIndexPath*)) = ^UITableView* (UITableViewCellAccessoryType (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_accessoryTypeForRowWithIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_accessoryButtonTappedForRowWithIndexPath {
    UITableView* (^block)(void (^)(UITableView*, NSIndexPath*)) = ^UITableView* (void (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_accessoryButtonTappedForRowWithIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}


- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_shouldHighlightRowAtIndexPath {
    UITableView* (^block)(BOOL (^)(UITableView*, NSIndexPath*)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_shouldHighlightRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_didHighlightRowAtIndexPath {
    UITableView* (^block)(void (^)(UITableView*, NSIndexPath*)) = ^UITableView* (void (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_didHighlightRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_didUnhighlightRowAtIndexPath {
    UITableView* (^block)(void (^)(UITableView*, NSIndexPath*)) = ^UITableView* (void (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_didUnhighlightRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSIndexPath * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_willSelectRowAtIndexPath {
    UITableView* (^block)(NSIndexPath* (^)(UITableView*, NSIndexPath*)) = ^UITableView* (NSIndexPath* (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_willSelectRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSIndexPath * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_willDeselectRowAtIndexPath {
    UITableView* (^block)(NSIndexPath* (^)(UITableView*, NSIndexPath*)) = ^UITableView* (NSIndexPath* (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_willDeselectRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_didSelectRowAtIndexPath {
    UITableView* (^block)(void (^)(UITableView*, NSIndexPath*)) = ^UITableView* (void (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_didSelectRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_didDeselectRowAtIndexPath {
    UITableView* (^block)(void (^)(UITableView*, NSIndexPath*)) = ^UITableView* (void (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_didDeselectRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(UITableViewCellEditingStyle (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_editingStyleForRowAtIndexPath {
    UITableView* (^block)(UITableViewCellEditingStyle (^)(UITableView*, NSIndexPath*)) = ^UITableView* (UITableViewCellEditingStyle (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_editingStyleForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSString * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_titleForDeleteConfirmationButtonForRowAtIndexPath {
    UITableView* (^block)(NSString* (^)(UITableView*, NSIndexPath*)) = ^UITableView* (NSString* (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_titleForDeleteConfirmationButtonForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSArray<UITableViewRowAction *> * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_editActionsForRowAtIndexPath {
    UITableView* (^block)(NSArray<UITableViewRowAction*>* (^)(UITableView*, NSIndexPath*)) = ^UITableView* (NSArray<UITableViewRowAction*>*  (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_editActionsForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(UISwipeActionsConfiguration * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_leadingSwipeActionsConfigurationForRowAtIndexPath {
    UITableView* (^block)(UISwipeActionsConfiguration* (^)(UITableView*, NSIndexPath*)) = ^UITableView* (UISwipeActionsConfiguration* (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_leadingSwipeActionsConfigurationForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(UISwipeActionsConfiguration * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_trailingSwipeActionsConfigurationForRowAtIndexPath {
    UITableView* (^block)(UISwipeActionsConfiguration* (^)(UITableView*, NSIndexPath*)) = ^UITableView* (UISwipeActionsConfiguration* (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_trailingSwipeActionsConfigurationForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_shouldIndentWhileEditingRowAtIndexPath {
    UITableView* (^block)(BOOL (^)(UITableView*, NSIndexPath*)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_shouldIndentWhileEditingRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_willBeginEditingRowAtIndexPath {
    UITableView* (^block)(void (^)(UITableView*, NSIndexPath*)) = ^UITableView* (void (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_willBeginEditingRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_didEndEditingRowAtIndexPath {
    UITableView* (^block)(void (^)(UITableView*, NSIndexPath*)) = ^UITableView* (void (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_didEndEditingRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSIndexPath * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull, NSIndexPath * _Nonnull)))x_targetIndexPathForMoveFromRowAtIndexPath {
    UITableView* (^block)(NSIndexPath* (^)(UITableView*, NSIndexPath*, NSIndexPath*)) = ^UITableView* (NSIndexPath* (^delegateBlock)(UITableView*, NSIndexPath*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_targetIndexPathForMoveFromRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_indentationLevelForRowAtIndexPath {
    UITableView* (^block)(NSInteger (^)(UITableView*, NSIndexPath*)) = ^UITableView* (NSInteger (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_indentationLevelForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_shouldShowMenuForRowAtIndexPath {
    UITableView* (^block)(BOOL (^)(UITableView*, NSIndexPath*)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_shouldShowMenuForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, SEL _Nonnull, NSIndexPath * _Nonnull, id _Nonnull)))x_canPerformAction {
    UITableView* (^block)(BOOL (^)(UITableView*, SEL, NSIndexPath*, id)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, SEL, NSIndexPath*, id)){
        self.delegate = self;
        self.dataSource = self;
        self.x_canPerformActionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, SEL _Nonnull, NSIndexPath * _Nonnull, id _Nonnull)))x_performAction {
    UITableView* (^block)(void (^)(UITableView*, SEL, NSIndexPath*, id)) = ^UITableView* (void (^delegateBlock)(UITableView*, SEL, NSIndexPath*, id)){
        self.delegate = self;
        self.dataSource = self;
        self.x_performActionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_canFocusRowAtIndexPath {
    UITableView* (^block)(BOOL (^)(UITableView*, NSIndexPath*)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_canFocusRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, UITableViewFocusUpdateContext * _Nonnull)))x_shouldUpdateFocusInContext {
    UITableView* (^block)(BOOL (^)(UITableView*, UITableViewFocusUpdateContext*)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, UITableViewFocusUpdateContext*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_shouldUpdateFocusInContextBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, UITableViewFocusUpdateContext * _Nonnull, UIFocusAnimationCoordinator * _Nonnull)))x_didUpdateFocusInContext {
    UITableView* (^block)(BOOL (^)(UITableView*, UITableViewFocusUpdateContext*, UIFocusAnimationCoordinator*)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, UITableViewFocusUpdateContext*, UIFocusAnimationCoordinator*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_didUpdateFocusInContextBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSIndexPath * _Nonnull (^ _Nonnull)(UITableView * _Nonnull)))x_indexPathForPreferredFocusedViewInTableView {
    UITableView* (^block)(NSIndexPath* (^)(UITableView*)) = ^UITableView* (NSIndexPath* (^delegateBlock)(UITableView*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_indexPathForPreferredFocusedViewInTableViewBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull, id<UISpringLoadedInteractionContext> _Nonnull)))x_shouldSpringLoadRowAtIndexPath {
    UITableView* (^block)(BOOL (^)(UITableView*, NSIndexPath*, id<UISpringLoadedInteractionContext>)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, NSIndexPath*, id<UISpringLoadedInteractionContext>)){
        self.delegate = self;
        self.dataSource = self;
        self.x_shouldSpringLoadRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

#pragma mark - datasource

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull, NSInteger)))x_numOfRowsInSection {
    UITableView* (^block)(NSInteger (^)(UITableView*, NSInteger)) = ^UITableView* (NSInteger (^delegateBlock)(UITableView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_numOfRowsInSectionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(UITableViewCell * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_cellForRowAtIndexPath {
    UITableView* (^block)(UITableViewCell* (^)(UITableView*, NSIndexPath*)) = ^UITableView* (UITableViewCell* (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_cellForRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull)))x_numofSectionsInTableView {
    UITableView* (^block)(NSInteger (^)(UITableView*)) = ^UITableView* (NSInteger (^delegateBlock)(UITableView*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_numofSectionsInTableViewBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSString * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSInteger)))x_titleForHeaderInSection {
    UITableView* (^block)(NSString* (^)(UITableView*, NSInteger)) = ^UITableView* (NSString* (^delegateBlock)(UITableView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_titleForHeaderInSectionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSString * _Nonnull (^ _Nonnull)(UITableView * _Nonnull, NSInteger)))x_titleForFooterInSection {
    UITableView* (^block)(NSString* (^)(UITableView*, NSInteger)) = ^UITableView* (NSString* (^delegateBlock)(UITableView*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_titleForFooterInSectionBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_canEditRowAtIndexPath {
    UITableView* (^block)(BOOL (^)(UITableView*, NSIndexPath*)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_canEditRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(BOOL (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull)))x_canMoveRowAtIndexPath {
    UITableView* (^block)(BOOL (^)(UITableView*, NSIndexPath*)) = ^UITableView* (BOOL (^delegateBlock)(UITableView*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_canMoveRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSArray<NSString *> * _Nonnull (^ _Nonnull)(UITableView * _Nonnull)))x_sectionIndexTitlesForTableView {
    UITableView* (^block)(NSArray<NSString*>* (^)(UITableView*)) = ^UITableView* (NSArray<NSString*>* (^delegateBlock)(UITableView*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_sectionIndexTitlesForTableViewBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(NSInteger (^ _Nonnull)(UITableView * _Nonnull, NSString * _Nonnull, NSInteger)))x_sectionForSectionIndexTitle {
    UITableView* (^block)(NSInteger (^)(UITableView*, NSString*, NSInteger)) = ^UITableView* (NSInteger (^delegateBlock)(UITableView*, NSString*, NSInteger)){
        self.delegate = self;
        self.dataSource = self;
        self.x_sectionForSectionIndexTitleBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, UITableViewCellEditingStyle, NSIndexPath * _Nonnull)))x_commitEditingStyle {
    UITableView* (^block)(void (^)(UITableView*, UITableViewCellEditingStyle, NSIndexPath*)) = ^UITableView* (void (^delegateBlock)(UITableView*, UITableViewCellEditingStyle, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_commitEditingStyleBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITableView * _Nonnull (^)(void (^ _Nonnull)(UITableView * _Nonnull, NSIndexPath * _Nonnull, NSIndexPath * _Nonnull)))x_moveRowAtIndexPath {
    UITableView* (^block)(void (^)(UITableView*, NSIndexPath*, NSIndexPath*)) = ^UITableView* (void (^delegateBlock)(UITableView*, NSIndexPath*, NSIndexPath*)){
        self.delegate = self;
        self.dataSource = self;
        self.x_moveRowAtIndexPathBlock = delegateBlock;
        return self;
    };
    return block;
}

#pragma mark - getter and setter

- (void (^)(UITableView *, UITableViewCell *, NSIndexPath *))x_willDisplayCellBlock {
    return objc_getAssociatedObject(self, &UITABLEVIEW_WILL_DISPLAY_CELL_KEY);
}

- (void)setX_willDisplayCellBlock:(void (^)(UITableView *, UITableViewCell *, NSIndexPath *))x_willDisplayCellBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_WILL_DISPLAY_CELL_KEY, x_willDisplayCellBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, UIView *, NSInteger))x_willDisplayHeaderViewBlock {
    return objc_getAssociatedObject(self, &UITABLEVIEW_WILL_DISPLAY_HEADERVIEW_KEY);
}

- (void)setX_willDisplayHeaderViewBlock:(void (^)(UITableView *, UIView *, NSInteger))x_willDisplayHeaderViewBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_WILL_DISPLAY_HEADERVIEW_KEY, x_willDisplayHeaderViewBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, UIView *, NSInteger))x_willDisplayFooterViewBlock {
    return objc_getAssociatedObject(self, &UITABLEVIEW_WILL_DISPLAY_FOOTERVIEW_KEY);
}

- (void)setX_willDisplayFooterViewBlock:(void (^)(UITableView *, UIView *, NSInteger))x_willDisplayFooterViewBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_WILL_DISPLAY_FOOTERVIEW_KEY, x_willDisplayFooterViewBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, UITableViewCell *, NSIndexPath *))x_didEndDisplayingCellBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_DID_END_DISPLAYING_CELL_KEY);
}

- (void)setX_didEndDisplayingCellBlock:(void (^)(UITableView *, UITableViewCell *, NSIndexPath *))x_didEndDisplayingCellBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_DID_END_DISPLAYING_CELL_KEY, x_didEndDisplayingCellBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, UIView *, NSInteger))x_didEndDisplayingHeaderViewBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_DID_END_DISPLAYING_HEADERVIEW_KEY);
}

- (void)setX_didEndDisplayingHeaderViewBlock:(void (^)(UITableView *, UIView *, NSInteger))x_didEndDisplayingHeaderViewBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_DID_END_DISPLAYING_HEADERVIEW_KEY, x_didEndDisplayingHeaderViewBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, UIView *, NSInteger))x_didEndDisplayingFooterViewBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_DID_END_DISPLAYING_FOOTERVIEW_KEY);
}

- (void)setX_didEndDisplayingFooterViewBlock:(void (^)(UITableView *, UIView *, NSInteger))x_didEndDisplayingFooterViewBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_DID_END_DISPLAYING_FOOTERVIEW_KEY, x_didEndDisplayingFooterViewBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *, NSIndexPath *))x_heightForRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_HEIGHT_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_heightForRowAtIndexPathBlock:(NSInteger (^)(UITableView *, NSIndexPath *))x_heightForRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_HEIGHT_FOR_ROW_AT_INDEXPATH_KEY, x_heightForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *, NSInteger))x_heightForHeaderInSectionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_HEIGHT_FOR_HEADER_INSECTION_KEY);
}

- (void)setX_heightForHeaderInSectionBlock:(NSInteger (^)(UITableView *, NSInteger))x_heightForHeaderInSectionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_HEIGHT_FOR_HEADER_INSECTION_KEY, x_heightForHeaderInSectionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *, NSInteger))x_heightForFooterInSectionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_HEIGHT_FOR_FOOTER_INSECTION_KEY);
}

- (void)setX_heightForFooterInSectionBlock:(NSInteger (^)(UITableView *, NSInteger))x_heightForFooterInSectionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_HEIGHT_FOR_FOOTER_INSECTION_KEY, x_heightForFooterInSectionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *, NSIndexPath *))x_estimatedHeightForRowAtIndexPathBlock {
    return objc_getAssociatedObject(self, &UITABLEVIEW_ESTIMATED_HEIGHT_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_estimatedHeightForRowAtIndexPathBlock:(NSInteger (^)(UITableView *, NSIndexPath *))x_estimatedHeightForRowAtIndexPathBlock{
    objc_setAssociatedObject(self, &UITABLEVIEW_ESTIMATED_HEIGHT_FOR_ROW_AT_INDEXPATH_KEY, x_estimatedHeightForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *, NSInteger))x_estimatedHeightForHeaderInSectionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_ESTIMATED_HEIGHT_FOR_HEADER_IN_SECTION_KEY);
}

- (void)setX_estimatedHeightForHeaderInSectionBlock:(NSInteger (^)(UITableView *, NSInteger))x_estimatedHeightForHeaderInSectionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_ESTIMATED_HEIGHT_FOR_HEADER_IN_SECTION_KEY, x_estimatedHeightForHeaderInSectionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *, NSInteger))x_estimatedHeightForFooterInSectionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_ESTIMATED_HEIGHT_FOR_FOOTER_IN_SECTION_KEY);
}

- (void)setX_estimatedHeightForFooterInSectionBlock:(NSInteger (^)(UITableView *, NSInteger))x_estimatedHeightForFooterInSectionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_ESTIMATED_HEIGHT_FOR_FOOTER_IN_SECTION_KEY, x_estimatedHeightForFooterInSectionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UIView *(^)(UITableView *, NSInteger))x_viewForHeaderInSectionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_VIEW_FOR_HEADER_IN_SECTION_KEY);
}

- (void)setX_viewForHeaderInSectionBlock:(UIView *(^)(UITableView *, NSInteger))x_viewForHeaderInSectionBlock {
     objc_setAssociatedObject(self, &UITABLEVIEW_VIEW_FOR_HEADER_IN_SECTION_KEY, x_viewForHeaderInSectionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UIView *(^)(UITableView *, NSInteger))x_viewForFooterInSectionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_VIEW_FOR_FOOTER_IN_SECTION_KEY);
}

- (void)setX_viewForFooterInSectionBlock:(UIView *(^)(UITableView *, NSInteger))x_viewForFooterInSectionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_VIEW_FOR_FOOTER_IN_SECTION_KEY, x_viewForFooterInSectionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UITableViewCellAccessoryType (^)(UITableView *, NSIndexPath *))x_accessoryTypeForRowWithIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_ASSESSORY_FOR_ROW_WITH_INDEXPATH_KEY);
}

- (void)setX_accessoryTypeForRowWithIndexPathBlock:(UITableViewCellAccessoryType (^)(UITableView *, NSIndexPath *))x_accessoryTypeForRowWithIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_ASSESSORY_FOR_ROW_WITH_INDEXPATH_KEY, x_accessoryTypeForRowWithIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, NSIndexPath *))x_accessoryButtonTappedForRowWithIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_ASSESSORY_BUTTON_TAPPED_FOR_ROW_WITH_INDEXPATH_KEY);
}

- (void)setX_accessoryButtonTappedForRowWithIndexPathBlock:(void (^)(UITableView *, NSIndexPath *))x_accessoryButtonTappedForRowWithIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_ASSESSORY_BUTTON_TAPPED_FOR_ROW_WITH_INDEXPATH_KEY, x_accessoryButtonTappedForRowWithIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, NSIndexPath *))x_shouldHighlightRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_SHOULD_HIGHLIGHT_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_shouldHighlightRowAtIndexPathBlock:(BOOL (^)(UITableView *, NSIndexPath *))x_shouldHighlightRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_SHOULD_HIGHLIGHT_ROW_AT_INDEXPATH_KEY, x_shouldHighlightRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, NSIndexPath *))x_didHighlightRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_DID_HIGHLIGHT_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_didHighlightRowAtIndexPathBlock:(void (^)(UITableView *, NSIndexPath *))x_didHighlightRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_DID_HIGHLIGHT_ROW_AT_INDEXPATH_KEY, x_didHighlightRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, NSIndexPath *))x_didUnhighlightRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_DID_UNHIGHLIGHT_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_didUnhighlightRowAtIndexPathBlock:(void (^)(UITableView *, NSIndexPath *))x_didUnhighlightRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_DID_UNHIGHLIGHT_ROW_AT_INDEXPATH_KEY, x_didUnhighlightRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSIndexPath *(^)(UITableView *, NSIndexPath *))x_willSelectRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_WILL_SELECT_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_willSelectRowAtIndexPathBlock:(NSIndexPath *(^)(UITableView *, NSIndexPath *))x_willSelectRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_WILL_SELECT_ROW_AT_INDEXPATH_KEY, x_willSelectRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSIndexPath *(^)(UITableView *, NSIndexPath *))x_willDeselectRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_WILL_DESELECT_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_willDeselectRowAtIndexPathBlock:(NSIndexPath *(^)(UITableView *, NSIndexPath *))x_willDeselectRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_WILL_DESELECT_ROW_AT_INDEXPATH_KEY, x_willDeselectRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, NSIndexPath *))x_didSelectRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_DID_SELECT_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_didSelectRowAtIndexPathBlock:(void (^)(UITableView *, NSIndexPath *))x_didSelectRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_DID_SELECT_ROW_AT_INDEXPATH_KEY, x_didSelectRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, NSIndexPath *))x_didDeselectRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_DID_DESELECT_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_didDeselectRowAtIndexPathBlock:(void (^)(UITableView *, NSIndexPath *))x_didDeselectRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_DID_DESELECT_ROW_AT_INDEXPATH_KEY, x_didDeselectRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UITableViewCellEditingStyle (^)(UITableView *, NSIndexPath *))x_editingStyleForRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_EDITING_STYLE_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_editingStyleForRowAtIndexPathBlock:(UITableViewCellEditingStyle (^)(UITableView *, NSIndexPath *))x_editingStyleForRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_EDITING_STYLE_FOR_ROW_AT_INDEXPATH_KEY, x_editingStyleForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *(^)(UITableView *, NSIndexPath *))x_titleForDeleteConfirmationButtonForRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_TITLE_FOR_DELETE_CONFIRMATION_BUTTON_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_titleForDeleteConfirmationButtonForRowAtIndexPathBlock:(NSString *(^)(UITableView *, NSIndexPath *))x_titleForDeleteConfirmationButtonForRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_TITLE_FOR_DELETE_CONFIRMATION_BUTTON_FOR_ROW_AT_INDEXPATH_KEY, x_titleForDeleteConfirmationButtonForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSArray<UITableViewRowAction *> *(^)(UITableView *, NSIndexPath *))x_editActionsForRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_EDIT_ACTIONS_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_editActionsForRowAtIndexPathBlock:(NSArray<UITableViewRowAction *> *(^)(UITableView *, NSIndexPath *))x_editActionsForRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_EDIT_ACTIONS_FOR_ROW_AT_INDEXPATH_KEY, x_editActionsForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UISwipeActionsConfiguration *(^)(UITableView *, NSIndexPath *))x_leadingSwipeActionsConfigurationForRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_LEADING_SWIPE_ACTIONS_CONFIGURATION_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_leadingSwipeActionsConfigurationForRowAtIndexPathBlock:(UISwipeActionsConfiguration *(^)(UITableView *, NSIndexPath *))x_leadingSwipeActionsConfigurationForRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_LEADING_SWIPE_ACTIONS_CONFIGURATION_FOR_ROW_AT_INDEXPATH_KEY, x_leadingSwipeActionsConfigurationForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UISwipeActionsConfiguration *(^)(UITableView *, NSIndexPath *))x_trailingSwipeActionsConfigurationForRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_TRAILING_SWIPE_ACTIONS_CONFIGURATION_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_trailingSwipeActionsConfigurationForRowAtIndexPathBlock:(UISwipeActionsConfiguration *(^)(UITableView *, NSIndexPath *))x_trailingSwipeActionsConfigurationForRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_TRAILING_SWIPE_ACTIONS_CONFIGURATION_FOR_ROW_AT_INDEXPATH_KEY, x_trailingSwipeActionsConfigurationForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, NSIndexPath *))x_shouldIndentWhileEditingRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_SHOULD_INDENT_WHILE_EDITING_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_shouldIndentWhileEditingRowAtIndexPathBlock:(BOOL (^)(UITableView *, NSIndexPath *))x_shouldIndentWhileEditingRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_SHOULD_INDENT_WHILE_EDITING_ROW_AT_INDEXPATH_KEY, x_shouldIndentWhileEditingRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, NSIndexPath *))x_willBeginEditingRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_WILL_BEGIN_EDITING_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_willBeginEditingRowAtIndexPathBlock:(void (^)(UITableView *, NSIndexPath *))x_willBeginEditingRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_WILL_BEGIN_EDITING_ROW_AT_INDEXPATH_KEY, x_willBeginEditingRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, NSIndexPath *))x_didEndEditingRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_DID_END_EDITING_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_didEndEditingRowAtIndexPathBlock:(void (^)(UITableView *, NSIndexPath *))x_didEndEditingRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_DID_END_EDITING_ROW_AT_INDEXPATH_KEY, x_didEndEditingRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSIndexPath *(^)(UITableView *, NSIndexPath *, NSIndexPath *))x_targetIndexPathForMoveFromRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_TARGET_INDEXPATH_FOR_MOVE_FROM_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_targetIndexPathForMoveFromRowAtIndexPathBlock:(NSIndexPath *(^)(UITableView *, NSIndexPath *, NSIndexPath *))x_targetIndexPathForMoveFromRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_TARGET_INDEXPATH_FOR_MOVE_FROM_ROW_AT_INDEXPATH_KEY, x_targetIndexPathForMoveFromRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *, NSIndexPath *))x_indentationLevelForRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_INDENTATION_LEVEL_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_indentationLevelForRowAtIndexPathBlock:(NSInteger (^)(UITableView *, NSIndexPath *))x_indentationLevelForRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_INDENTATION_LEVEL_FOR_ROW_AT_INDEXPATH_KEY, x_indentationLevelForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, NSIndexPath *))x_shouldShowMenuForRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_SHOULD_SHOW_MENU_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_shouldShowMenuForRowAtIndexPathBlock:(BOOL (^)(UITableView *, NSIndexPath *))x_shouldShowMenuForRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_SHOULD_SHOW_MENU_FOR_ROW_AT_INDEXPATH_KEY, x_shouldShowMenuForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, SEL, NSIndexPath *, id))x_canPerformActionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_CAN_PERFORM_ACTION_KEY);
}

- (void)setX_canPerformActionBlock:(BOOL (^)(UITableView *, SEL, NSIndexPath *, id))x_canPerformActionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_CAN_PERFORM_ACTION_KEY, x_canPerformActionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, SEL, NSIndexPath *, id))x_performActionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_PERFORM_ACTION_KEY);
}

- (void)setX_performActionBlock:(void (^)(UITableView *, SEL, NSIndexPath *, id))x_performActionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_PERFORM_ACTION_KEY, x_performActionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, NSIndexPath *))x_canFocusRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_CAN_FOCUS_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_canFocusRowAtIndexPathBlock:(BOOL (^)(UITableView *, NSIndexPath *))x_canFocusRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_CAN_FOCUS_ROW_AT_INDEXPATH_KEY, x_canFocusRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, UITableViewFocusUpdateContext *))x_shouldUpdateFocusInContextBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_SHOULD_UPDATE_FOCUS_IN_CONTEXT_KEY);
}

- (void)setX_shouldUpdateFocusInContextBlock:(BOOL (^)(UITableView *, UITableViewFocusUpdateContext *))x_shouldUpdateFocusInContextBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_SHOULD_UPDATE_FOCUS_IN_CONTEXT_KEY, x_shouldUpdateFocusInContextBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, UITableViewFocusUpdateContext *, UIFocusAnimationCoordinator *))x_didUpdateFocusInContextBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_DID_UPDATE_FOCUS_IN_CONTEXT_KEY);
}

- (void)setX_didUpdateFocusInContextBlock:(BOOL (^)(UITableView *, UITableViewFocusUpdateContext *, UIFocusAnimationCoordinator *))x_didUpdateFocusInContextBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_DID_UPDATE_FOCUS_IN_CONTEXT_KEY, x_didUpdateFocusInContextBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSIndexPath *(^)(UITableView *))x_indexPathForPreferredFocusedViewInTableViewBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_INDEXPATH_FOR_PREFERRED_FOCUSED_VIEW_IN_TABLEVIEW_KEY);
}

- (void)setX_indexPathForPreferredFocusedViewInTableViewBlock:(NSIndexPath *(^)(UITableView *))x_indexPathForPreferredFocusedViewInTableViewBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_INDEXPATH_FOR_PREFERRED_FOCUSED_VIEW_IN_TABLEVIEW_KEY, x_indexPathForPreferredFocusedViewInTableViewBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, NSIndexPath *, id<UISpringLoadedInteractionContext>))x_shouldSpringLoadRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_SHOULD_SPRING_LOAD_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_shouldSpringLoadRowAtIndexPathBlock:(BOOL (^)(UITableView *, NSIndexPath *, id<UISpringLoadedInteractionContext>))x_shouldSpringLoadRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_SHOULD_SPRING_LOAD_ROW_AT_INDEXPATH_KEY, x_shouldSpringLoadRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *, NSInteger))x_numOfRowsInSectionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_NUM_OF_ROWS_IN_SECTION_KEY);
}

- (void)setX_numOfRowsInSectionBlock:(NSInteger (^)(UITableView *, NSInteger))x_numOfRowsInSectionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_NUM_OF_ROWS_IN_SECTION_KEY, x_numOfRowsInSectionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UITableViewCell *(^)(UITableView *, NSIndexPath *))x_cellForRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_CELL_FOR_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_cellForRowAtIndexPathBlock:(UITableViewCell *(^)(UITableView *, NSIndexPath *))x_cellForRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_CELL_FOR_ROW_AT_INDEXPATH_KEY, x_cellForRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *))x_numofSectionsInTableViewBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_NUM_OF_SECTION_IN_TABLEVIEW_KEY);
}

- (void)setX_numofSectionsInTableViewBlock:(NSInteger (^)(UITableView *))x_numofSectionsInTableViewBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_NUM_OF_SECTION_IN_TABLEVIEW_KEY, x_numofSectionsInTableViewBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *(^)(UITableView *, NSInteger))x_titleForHeaderInSectionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_TITLE_FOR_HEADER_IN_SECTION_KEY);
}

- (void)setX_titleForHeaderInSectionBlock:(NSString *(^)(UITableView *, NSInteger))x_titleForHeaderInSectionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_TITLE_FOR_HEADER_IN_SECTION_KEY, x_titleForHeaderInSectionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *(^)(UITableView *, NSInteger))x_titleForFooterInSectionBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_TITLE_FOR_FOOTER_IN_SECTION_KEY);
}

- (void)setX_titleForFooterInSectionBlock:(NSString *(^)(UITableView *, NSInteger))x_titleForFooterInSectionBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_TITLE_FOR_FOOTER_IN_SECTION_KEY, x_titleForFooterInSectionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, NSIndexPath *))x_canEditRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_CAN_EDIT_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_canEditRowAtIndexPathBlock:(BOOL (^)(UITableView *, NSIndexPath *))x_canEditRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_CAN_EDIT_ROW_AT_INDEXPATH_KEY, x_canEditRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITableView *, NSIndexPath *))x_canMoveRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_CAN_MOVE_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_canMoveRowAtIndexPathBlock:(BOOL (^)(UITableView *, NSIndexPath *))x_canMoveRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_CAN_MOVE_ROW_AT_INDEXPATH_KEY, x_canMoveRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSArray<NSString *> *(^)(UITableView *))x_sectionIndexTitlesForTableViewBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_SECTION_INDEX_TITLES_FOR_TABLEVIEW_KEY);
}

- (void)setX_sectionIndexTitlesForTableViewBlock:(NSArray<NSString *> *(^)(UITableView *))x_sectionIndexTitlesForTableViewBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_SECTION_INDEX_TITLES_FOR_TABLEVIEW_KEY, x_sectionIndexTitlesForTableViewBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSInteger (^)(UITableView *, NSString *, NSInteger))x_sectionForSectionIndexTitleBlock {
    return  objc_getAssociatedObject(self, &UITABLEVIEW_SECTION_FOR_SECTION_INDEX_TITLE_KEY);
}

- (void)setX_sectionForSectionIndexTitleBlock:(NSInteger (^)(UITableView *, NSString *, NSInteger))x_sectionForSectionIndexTitleBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_SECTION_FOR_SECTION_INDEX_TITLE_KEY, x_sectionForSectionIndexTitleBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, UITableViewCellEditingStyle, NSIndexPath *))x_commitEditingStyleBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_COMMIT_EDITING_STYLE_KEY);
}

- (void)setX_commitEditingStyleBlock:(void (^)(UITableView *, UITableViewCellEditingStyle, NSIndexPath *))x_commitEditingStyleBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_COMMIT_EDITING_STYLE_KEY, x_commitEditingStyleBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITableView *, NSIndexPath *, NSIndexPath *))x_moveRowAtIndexPathBlock {
     return objc_getAssociatedObject(self, &UITABLEVIEW_MOVE_ROW_AT_INDEXPATH_KEY);
}

- (void)setX_moveRowAtIndexPathBlock:(void (^)(UITableView *, NSIndexPath *, NSIndexPath *))x_moveRowAtIndexPathBlock {
    objc_setAssociatedObject(self, &UITABLEVIEW_MOVE_ROW_AT_INDEXPATH_KEY, x_moveRowAtIndexPathBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_willDisplayCellBlock) {
        self.x_willDisplayCellBlock(tableView, cell, indexPath);
    }
}
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    if (self.x_willDisplayHeaderViewBlock) {
        self.x_willDisplayHeaderViewBlock(tableView, view, section);
    }
}
- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section {
    if (self.x_willDisplayFooterViewBlock) {
        self.x_willDisplayHeaderViewBlock(tableView, view, section);
    }
}
- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath*)indexPath {
    if (self.x_didEndDisplayingCellBlock) {
        self.x_didEndDisplayingCellBlock(tableView, cell, indexPath);
    }
}
- (void)tableView:(UITableView *)tableView didEndDisplayingHeaderView:(UIView *)view forSection:(NSInteger)section {
    if (self.x_didEndDisplayingHeaderViewBlock) {
        self.x_didEndDisplayingHeaderViewBlock(tableView, view, section);
    }
}
- (void)tableView:(UITableView *)tableView didEndDisplayingFooterView:(UIView *)view forSection:(NSInteger)section {
    if (self.x_didEndDisplayingFooterViewBlock) {
        self.x_didEndDisplayingFooterViewBlock(tableView, view, section);
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_heightForRowAtIndexPathBlock) {
        return self.x_heightForRowAtIndexPathBlock(tableView, indexPath);
    }
    return self.rowHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (self.x_heightForHeaderInSectionBlock) {
        NSInteger num = self.x_heightForHeaderInSectionBlock(tableView, section);
        return num;
    }
    return self.sectionHeaderHeight;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (self.x_heightForFooterInSectionBlock) {
        NSInteger num = self.x_heightForFooterInSectionBlock(tableView, section);
        return num;
    }
    return self.sectionFooterHeight;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_estimatedHeightForRowAtIndexPathBlock) {
        return self.x_estimatedHeightForRowAtIndexPathBlock(tableView, indexPath);
    }
    return self.rowHeight;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section {
    if (self.x_estimatedHeightForHeaderInSectionBlock) {
        return self.x_estimatedHeightForHeaderInSectionBlock(tableView, section);
    }
    return self.sectionHeaderHeight;
}
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForFooterInSection:(NSInteger)section {
    if (self.x_estimatedHeightForFooterInSectionBlock) {
        return self.x_estimatedHeightForFooterInSectionBlock(tableView, section);
    }
    return self.sectionFooterHeight;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (self.x_viewForHeaderInSectionBlock) {
        return self.x_viewForHeaderInSectionBlock(tableView, section);
    }
    return nil;
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    if (self.x_viewForFooterInSectionBlock) {
        return self.x_viewForFooterInSectionBlock(tableView, section);
    }
    return nil;
}

//- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
//    if (self.x_accessoryTypeForRowWithIndexPathBlock) {
//        return self.x_accessoryTypeForRowWithIndexPathBlock(tableView, indexPath);
//    }
//    return UITableViewCellAccessoryNone;
//}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    if (self.x_accessoryButtonTappedForRowWithIndexPathBlock) {
        self.x_accessoryButtonTappedForRowWithIndexPathBlock(tableView, indexPath);
    }
}

- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_shouldHighlightRowAtIndexPathBlock) {
        return self.x_shouldHighlightRowAtIndexPathBlock(tableView, indexPath);
    }
    return NO;
}
- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_didHighlightRowAtIndexPathBlock) {
        self.x_didHighlightRowAtIndexPathBlock(tableView, indexPath);
    }
}
- (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_didUnhighlightRowAtIndexPathBlock) {
        self.x_didUnhighlightRowAtIndexPathBlock(tableView, indexPath);
    }
}

- (nullable NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_willSelectRowAtIndexPathBlock) {
        return self.x_willSelectRowAtIndexPathBlock(tableView, indexPath);
    }
    return nil;
}
- (nullable NSIndexPath *)tableView:(UITableView *)tableView willDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_willDeselectRowAtIndexPathBlock) {
        return self.x_willDeselectRowAtIndexPathBlock(tableView, indexPath);
    }
    return nil;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_didSelectRowAtIndexPathBlock) {
        self.x_didSelectRowAtIndexPathBlock(tableView, indexPath);
    }
}
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_didDeselectRowAtIndexPathBlock) {
        self.x_didDeselectRowAtIndexPathBlock(tableView, indexPath);
    }
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_editingStyleForRowAtIndexPathBlock) {
        return self.x_editingStyleForRowAtIndexPathBlock(tableView, indexPath);
    }
    return UITableViewCellEditingStyleNone;
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_titleForDeleteConfirmationButtonForRowAtIndexPathBlock) {
        return self.x_titleForDeleteConfirmationButtonForRowAtIndexPathBlock(tableView, indexPath);
    }
    return nil;
}

- (nullable NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_editActionsForRowAtIndexPathBlock) {
        return self.x_editActionsForRowAtIndexPathBlock(tableView, indexPath);
    }
    return nil;
}

- (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_leadingSwipeActionsConfigurationForRowAtIndexPathBlock) {
        return self.x_leadingSwipeActionsConfigurationForRowAtIndexPathBlock(tableView, indexPath);
    }
    return nil;
}
- (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_trailingSwipeActionsConfigurationForRowAtIndexPathBlock) {
        return self.x_trailingSwipeActionsConfigurationForRowAtIndexPathBlock(tableView, indexPath);
    }
    return nil;
}

- (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_shouldIndentWhileEditingRowAtIndexPathBlock) {
        return self.x_shouldIndentWhileEditingRowAtIndexPathBlock(tableView,indexPath);
    }
    return YES;
}

- (void)tableView:(UITableView *)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_willBeginEditingRowAtIndexPathBlock) {
        self.x_willBeginEditingRowAtIndexPathBlock(tableView, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(nullable NSIndexPath *)indexPath {
    if (self.x_didEndEditingRowAtIndexPathBlock) {
        self.x_didEndEditingRowAtIndexPathBlock(tableView, indexPath);
    }
}

- (NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath {
    if (self.x_targetIndexPathForMoveFromRowAtIndexPathBlock) {
        return self.x_targetIndexPathForMoveFromRowAtIndexPathBlock(tableView, sourceIndexPath, proposedDestinationIndexPath);
    }
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_indentationLevelForRowAtIndexPathBlock) {
        return self.x_indentationLevelForRowAtIndexPathBlock(tableView, indexPath);
    }
    return 0;
}


- (BOOL)tableView:(UITableView *)tableView shouldShowMenuForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_shouldShowMenuForRowAtIndexPathBlock) {
        return self.x_shouldShowMenuForRowAtIndexPathBlock(tableView, indexPath);
    }
    return YES;
}
- (BOOL)tableView:(UITableView *)tableView canPerformAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(nullable id)sender {
    if (self.x_canPerformActionBlock) {
        self.x_canPerformActionBlock(tableView, action, indexPath, sender);
    }
    return YES;
}
- (void)tableView:(UITableView *)tableView performAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(nullable id)sender {
    if (self.x_performActionBlock) {
        self.x_performActionBlock(tableView, action, indexPath, sender);
    }
}


- (BOOL)tableView:(UITableView *)tableView canFocusRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_canFocusRowAtIndexPathBlock) {
        return self.x_canFocusRowAtIndexPathBlock(tableView, indexPath);
    }
    return YES;
}


- (BOOL)tableView:(UITableView *)tableView shouldUpdateFocusInContext:(UITableViewFocusUpdateContext *)context {
    if (self.x_shouldUpdateFocusInContextBlock) {
        return self.x_shouldUpdateFocusInContextBlock(tableView, context);
    }
    return YES;
}

- (void)tableView:(UITableView *)tableView didUpdateFocusInContext:(UITableViewFocusUpdateContext *)context withAnimationCoordinator:(UIFocusAnimationCoordinator *)coordinator {
    if (self.x_didUnhighlightRowAtIndexPathBlock) {
        self.x_didUpdateFocusInContextBlock(tableView, context, coordinator);
    }
}
- (nullable NSIndexPath *)indexPathForPreferredFocusedViewInTableView:(UITableView *)tableView {
    if (self.x_indexPathForPreferredFocusedViewInTableViewBlock) {
        return self.x_indexPathForPreferredFocusedViewInTableViewBlock(tableView);
    }
    return nil;
}

- (BOOL)tableView:(UITableView *)tableView shouldSpringLoadRowAtIndexPath:(NSIndexPath *)indexPath withContext:(id<UISpringLoadedInteractionContext>)context {
    if (self.x_shouldSpringLoadRowAtIndexPathBlock) {
        return self.x_shouldSpringLoadRowAtIndexPathBlock(tableView, indexPath, context);
    }
    return YES;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.x_numOfRowsInSectionBlock) {
        return self.x_numOfRowsInSectionBlock(tableView, section);
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_cellForRowAtIndexPathBlock) {
        return self.x_cellForRowAtIndexPathBlock(tableView,indexPath);
    }
    return nil;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (self.x_numofSectionsInTableViewBlock) {
        return self.x_numofSectionsInTableViewBlock(tableView);
    }
    return 1;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (self.x_titleForHeaderInSectionBlock) {
        return self.x_titleForHeaderInSectionBlock(tableView, section);
    }
    return nil;
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    if (self.x_titleForFooterInSectionBlock) {
        return self.x_titleForFooterInSectionBlock(tableView, section);
    }
    return nil;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_canEditRowAtIndexPathBlock) {
        return self.x_canEditRowAtIndexPathBlock(tableView, indexPath);
    }
    return YES;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_canMoveRowAtIndexPathBlock) {
        return self.x_canMoveRowAtIndexPathBlock(tableView, indexPath);
    }
    return NO;
}

- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    if (self.x_sectionIndexTitlesForTableViewBlock) {
        self.x_sectionIndexTitlesForTableViewBlock(tableView);
    }
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    if (self.x_sectionForSectionIndexTitleBlock) {
        return self.x_sectionForSectionIndexTitleBlock(tableView, title, index);
    }
    return 0;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.x_commitEditingStyleBlock) {
        self.x_commitEditingStyleBlock(tableView, editingStyle, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    if (self.x_canMoveRowAtIndexPathBlock) {
        self.x_moveRowAtIndexPathBlock(tableView, sourceIndexPath, destinationIndexPath);
    }
}

@end
