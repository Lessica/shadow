#import "hooks.h"

%group shadowhook_UIApplication
%hook UIApplication
- (BOOL)canOpenURL:(NSURL *)url {
    if([_shadow isURLRestricted:url]) {
        return NO;
    }

    return %orig;
}
%end
%end

void shadowhook_UIApplication(void) {
    %init(shadowhook_UIApplication);
}