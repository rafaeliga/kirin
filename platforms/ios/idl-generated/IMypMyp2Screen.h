
@protocol IMypMyp2Screen <NSObject>
 
/**
 * @param rows
 */
- (void) setTableContents: (NSArray*) rows;
 
/**
 * @param index
 * @param row
 */
- (void) insertRow: (int) index WithContents: (NSString*) row;
 
/**
 * @param index
 * @param contents
 */
- (void) displayDetailScreenForRow: (int) index AndContents: (NSString*) contents;
@end