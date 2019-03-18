# X_Kit
### 使用方法

# UIView
```
UIView *view = [UIView new];
view
.x_frame([NSValue valueWithCGRect:CGRectMake(0, 0, 100, 100)])
.x_backgroundColor([UIColor redColor])
.x_tag(@1000)
.x_cornerRadius(@50)
.x_borderColor([UIColor whiteColor])
.x_borderWidth(@2);
[self.view addSubview:view];
```
# UILabel
```
UILabel *label1 = [UILabel new];
label1
.x_text(@"您好呀!")
.x_textColor([UIColor blueColor])
.x_font([UIFont systemFontOfSize:44])
.x_align(@(NSTextAlignmentCenter))
.x_cornerRadius(@(25))
.x_clipToBounds(@(YES))
.x_backgroundColor([UIColor orangeColor]);
[self.view addSubview:label1];
```
# UIButton
```
UIButton *button = [UIButton new];
button
.x_state(@(x_normal))
.x_title(@"NORMAL")
.x_titleColor([UIColor redColor])
.x_font([UIFont systemFontOfSize:15])
.x_state(@(x_selected))
.x_title(@"SELECTED")
.x_titleColor([UIColor orangeColor])
.x_action(^(UIButton * sender) {
    NSLog(@"哈哈哈哈");
});
[self.view addSubview:button];
```
# UITextField
```
UITextField *field = [UITextField new];
field
.x_placeholder(@"placeholder")
.x_borderStyle(@(UITextBorderStyleRoundedRect))
.x_textColor([UIColor redColor])
.x_align(@(NSTextAlignmentCenter))
.x_shouldBeginEditing(^BOOL(UITextField * _Nonnull field) {
    NSLog(@"hahahahahahha");
    return YES;
})
.x_shouldChangeCharacters(^BOOL(UITextField * _Nonnull field, NSRange range, NSString * _Nonnull replacementString) {
    NSLog(@"%@",replacementString);
    return YES;
}).x_shouldClear(^BOOL(UITextField * _Nonnull field) {
    return YES;
});
[self.view addSubview:field];
```
# UITableView
```
UITableView *table = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
table
.x_rowHeight(@60)
.x_sectionHeaderHeight(@0.01)
.x_sectionFooterHeight(@0.01)
.x_registerCell([UITableViewCell class], cellID)
.x_delegate(table)
.x_dataSource(table)
.x_viewForHeaderInSection(^UIView * _Nonnull(UITableView * _Nonnull table, NSInteger section) {
    UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 200)];
    header.backgroundColor = [UIColor redColor];
    return header;
})
.x_viewForFooterInSection(^UIView * _Nonnull(UITableView * _Nonnull table, NSInteger section) {
    UIView *footer = [[UIView alloc] initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 200)];
    footer.backgroundColor = [UIColor blueColor];
    return footer;
})
.x_heightForFooterInSection(^NSInteger(UITableView * _Nonnull table, NSInteger section) {
    return 20;
})
.x_heightForHeaderInSection(^NSInteger(UITableView * _Nonnull table, NSInteger section) {
    return 20;
})
.x_numofSectionsInTableView(^NSInteger(UITableView * _Nonnull table) {
    return self.dataSource.count;
})
.x_numOfRowsInSection(^NSInteger(UITableView * _Nonnull table, NSInteger section) {
    return [self.dataSource[section] count];
})
.x_cellForRowAtIndexPath(^UITableViewCell * _Nonnull(UITableView * _Nonnull table, NSIndexPath * _Nonnull indexpath) {
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:cellID forIndexPath:indexpath];
    cell.textLabel.text = self.dataSource[indexpath.section][indexpath.row];
    return cell;
})
;
[self.view addSubview:table];
```
