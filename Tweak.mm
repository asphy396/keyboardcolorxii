#import <UIKit/UIKit.h>
#include <libcolorpicker.h>

NSDictionary* prefs = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.asphyxia.keyboardcolorxii.plist"];
NSString* keyboardColor = [prefs objectForKey:@"keyboardColor"];
@interface _UIKBCompatInputView
@property (nonatomic, copy, readwrite) UIColor *backgroundColor;
@end
@interface UIKBSplitImageView
@property (nonatomic, copy, readwrite) UIColor *backgroundColor;
@end
@interface UIKBRenderConfig
@property (nonatomic, assign, readwrite) BOOL lightKeyboard;
@end

%hook _UIKBCompatInputView

-(void) layoutSubviews {
	
	%orig;
	self.backgroundColor = LCPParseColorString(keyboardColor, @"#db5376");

}
%end


%hook UIKBSplitImageView

-(void) layoutSubviews {
	
	%orig;
	self.backgroundColor = LCPParseColorString(keyboardColor, @"#db5376");

}
%end

%hook UIKBRenderConfig

-(BOOL)lightKeyboard {

	return 0;

}

%end
