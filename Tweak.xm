//Thanks to Tony, without him I would still be lost and smashing my head against my keyboard like an idiot.
#import "spawn.h"
#import "AppList.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

static NSString *selectedApp;
static void loadPrefs() {
NSDictionary *prefs = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.midnightchips.homehijackpreferences.plist"];

selectedApp = [prefs objectForKey:@"otherApp"];
}
/*%hook SBAssistantController
-(BOOL)isAssistantVisible{
    BOOL answer = %orig;
    if (answer == YES)
    [[UIApplication sharedApplication] launchApplicationWithIdentifier:@"com.amazon.echo" suspended:FALSE];
   return NO;
}
%end*/

%hook SBAssistantController
-(void)_viewWillAppearOnMainScreen:(BOOL)arg1{
    //[[UIApplication sharedApplication] launchApplicationWithIdentifier:@"com.amazon.echo" suspended:FALSE];
    loadPrefs();
    if (selectedApp != nil){
        [[UIApplication sharedApplication] launchApplicationWithIdentifier:selectedApp suspended:FALSE];
        %orig(NO);
    }else{
        %orig;
    }

}


%end

%hook SBAssistantWindow
-(id)initWithScreen:(id)arg1 layoutStrategy:(id)arg2 debugName:(id)arg3 scene:(id)arg4 {
    loadPrefs();
    if (selectedApp !=nil){
        return NULL;
    }else{
        return %orig;
    }
}
%end
