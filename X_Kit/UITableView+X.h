//
//  UITableView+X.h
//  XKitDemo
//
//  Created by liuxu on 2019/3/14.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XKit.h"

typedef UITableView* (^xta_Block)(id);

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (X)

@property (nonatomic, copy, readonly) xta_Block x_delegate;
@property (nonatomic, copy, readonly) xta_Block x_dataSource;
@property (nonatomic, copy, readonly) xta_Block x_rowHeight;
@property (nonatomic, copy, readonly) xta_Block x_sectionHeaderHeight;
@property (nonatomic, copy, readonly) xta_Block x_sectionFooterHeight;
@property (nonatomic, copy, readonly) xta_Block x_estimatedRowHeight;
@property (nonatomic, copy, readonly) xta_Block x_estimatedSectionHeaderHeight;
@property (nonatomic, copy, readonly) xta_Block x_estimatedSectionFooterHeight;
@property (nonatomic, copy, readonly) xta_Block x_separatorInset;
@property (nonatomic, copy, readonly) xta_Block x_separatorInsetReference;
@property (nonatomic, copy, readonly) xta_Block x_backgroundView;

@property (nonatomic, copy, readonly) xta_Block x_editing;
@property (nonatomic, copy, readonly) xta_Block x_allowsSelection;
@property (nonatomic, copy, readonly) xta_Block x_allowsSelectionDuringEditing;
@property (nonatomic, copy, readonly) xta_Block x_allowsMultipleSelection;
@property (nonatomic, copy, readonly) xta_Block x_allowsMultipleSelectionDuringEditing;
@property (nonatomic, copy, readonly) xta_Block x_sectionIndexMinimumDisplayRowCount;
@property (nonatomic, copy, readonly) xta_Block x_sectionIndexColor;
@property (nonatomic, copy, readonly) xta_Block x_sectionIndexBackgroundColor;
@property (nonatomic, copy, readonly) xta_Block x_sectionIndexTrackingBackgroundColor;
@property (nonatomic, copy, readonly) xta_Block x_separatorStyle;
@property (nonatomic, copy, readonly) xta_Block x_separatorColor;
@property (nonatomic, copy, readonly) xta_Block x_separatorEffect;
@property (nonatomic, copy, readonly) xta_Block x_cellLayoutMarginsFollowReadableWidth;
@property (nonatomic, copy, readonly) xta_Block x_insetsContentViewsToSafeArea;
@property (nonatomic, copy, readonly) xta_Block x_tableHeaderView;
@property (nonatomic, copy, readonly) xta_Block x_tableFooterView;
@property (nonatomic, copy, readonly) xta_Block x_remembersLastFocusedIndexPath;
@property (nonatomic, copy, readonly) xta_Block x_dragInteractionEnabled;

@property (nonatomic, copy, readonly) UITableView* (^x_registerCell)(Class, NSString*);



#pragma mark - delegate

@property (nonatomic, copy, readonly) UITableView* (^x_willDisplayCell)(void (^)(UITableView*, UITableViewCell*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_willDisplayHeaderView)(void (^)(UITableView*, UIView*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_willDisplayFooterView)(void (^)(UITableView*, UIView*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_didEndDisplayingCell)(void (^)(UITableView*, UITableViewCell*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_didEndDisplayingHeaderView)(void (^)(UITableView*, UIView*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_didEndDisplayingFooterView)(void (^)(UITableView*, UIView*, NSInteger));


@property (nonatomic, copy, readonly) UITableView* (^x_heightForRowAtIndexPath)(NSInteger (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_heightForHeaderInSection)(NSInteger (^)(UITableView*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_heightForFooterInSection)(NSInteger (^)(UITableView*, NSInteger));

@property (nonatomic, copy, readonly) UITableView* (^x_estimatedHeightForRowAtIndexPath)(NSInteger (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_estimatedHeightForHeaderInSection)(NSInteger (^)(UITableView*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_estimatedHeightForFooterInSection)(NSInteger (^)(UITableView*, NSInteger));

@property (nonatomic, copy, readonly) UITableView* (^x_viewForHeaderInSection)(UIView* (^)(UITableView*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_viewForFooterInSection)(UIView* (^)(UITableView*, NSInteger));

@property (nonatomic, copy, readonly) UITableView* (^x_accessoryTypeForRowWithIndexPath)(UITableViewCellAccessoryType (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_accessoryButtonTappedForRowWithIndexPath)(void (^)(UITableView*, NSIndexPath*));

@property (nonatomic, copy, readonly) UITableView* (^x_shouldHighlightRowAtIndexPath)(BOOL (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_didHighlightRowAtIndexPath)(void (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_didUnhighlightRowAtIndexPath)(void (^)(UITableView*, NSIndexPath*));

@property (nonatomic, copy, readonly) UITableView* (^x_willSelectRowAtIndexPath)(NSIndexPath* (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_willDeselectRowAtIndexPath)(NSIndexPath* (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_didSelectRowAtIndexPath)(void (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_didDeselectRowAtIndexPath)(void (^)(UITableView*, NSIndexPath*));


@property (nonatomic, copy, readonly) UITableView* (^x_editingStyleForRowAtIndexPath)(UITableViewCellEditingStyle (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_titleForDeleteConfirmationButtonForRowAtIndexPath)(NSString* (^)(UITableView*, NSIndexPath*));

@property (nonatomic, copy, readonly) UITableView* (^x_editActionsForRowAtIndexPath)(NSArray<UITableViewRowAction*>* (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_leadingSwipeActionsConfigurationForRowAtIndexPath)(UISwipeActionsConfiguration* (^)(UITableView*, NSIndexPath*)) NS_AVAILABLE_IOS(11_0);
@property (nonatomic, copy, readonly) UITableView* (^x_trailingSwipeActionsConfigurationForRowAtIndexPath)(UISwipeActionsConfiguration* (^)(UITableView*, NSIndexPath*)) NS_AVAILABLE_IOS(11_0);
@property (nonatomic, copy, readonly) UITableView* (^x_shouldIndentWhileEditingRowAtIndexPath)(BOOL (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_willBeginEditingRowAtIndexPath)(void (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_didEndEditingRowAtIndexPath)(void (^)(UITableView*, NSIndexPath*));


@property (nonatomic, copy, readonly) UITableView* (^x_targetIndexPathForMoveFromRowAtIndexPath)(NSIndexPath* (^)(UITableView*, NSIndexPath*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_indentationLevelForRowAtIndexPath)(NSInteger (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_shouldShowMenuForRowAtIndexPath)(BOOL (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_canPerformAction)(BOOL (^)(UITableView*, SEL, NSIndexPath*, id));
@property (nonatomic, copy, readonly) UITableView* (^x_performAction)(void (^)(UITableView*, SEL, NSIndexPath*, id));

@property (nonatomic, copy, readonly) UITableView* (^x_canFocusRowAtIndexPath)(BOOL (^)(UITableView*, NSIndexPath*)) NS_AVAILABLE_IOS(9_0);

@property (nonatomic, copy, readonly) UITableView* (^x_shouldUpdateFocusInContext)(BOOL (^)(UITableView*, UITableViewFocusUpdateContext*)) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) UITableView* (^x_didUpdateFocusInContext)(BOOL (^)(UITableView*, UITableViewFocusUpdateContext*, UIFocusAnimationCoordinator*)) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) UITableView* (^x_indexPathForPreferredFocusedViewInTableView)(NSIndexPath* (^)(UITableView*)) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) UITableView* (^x_shouldSpringLoadRowAtIndexPath)(BOOL (^)(UITableView*, NSIndexPath*, id<UISpringLoadedInteractionContext>)) NS_AVAILABLE_IOS(11_0);

#pragma mark - dataSource
@property (nonatomic, copy, readonly) UITableView* (^x_numOfRowsInSection)(NSInteger (^)(UITableView*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_cellForRowAtIndexPath)(UITableViewCell * (^)(UITableView*, NSIndexPath*));

@property (nonatomic, copy, readonly) UITableView* (^x_numofSectionsInTableView)(NSInteger (^)(UITableView*));
@property (nonatomic, copy, readonly) UITableView* (^x_titleForHeaderInSection)(NSString* (^)(UITableView*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_titleForFooterInSection)(NSString* (^)(UITableView*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_canEditRowAtIndexPath)(BOOL (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_canMoveRowAtIndexPath)(BOOL (^)(UITableView*, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_sectionIndexTitlesForTableView)(NSArray<NSString*>* (^)(UITableView*));
@property (nonatomic, copy, readonly) UITableView* (^x_sectionForSectionIndexTitle)(NSInteger (^)(UITableView*, NSString*, NSInteger));
@property (nonatomic, copy, readonly) UITableView* (^x_commitEditingStyle)(void (^)(UITableView*, UITableViewCellEditingStyle, NSIndexPath*));
@property (nonatomic, copy, readonly) UITableView* (^x_moveRowAtIndexPath)(void (^)(UITableView*, NSIndexPath*, NSIndexPath*));
@end

NS_ASSUME_NONNULL_END
