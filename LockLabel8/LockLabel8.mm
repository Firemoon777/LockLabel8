#line 1 "/Users/firemoon777/LockLabel8/LockLabel8/LockLabel8.xm"




#import <UIKit/UIKit.h>

#define SETTINGS_FILE @"/var/mobile/Library/Preferences/ru.firemoon777.LockLabel8Bundle.plist"

NSDictionary *settings;

#include <logos/logos.h>
#include <substrate.h>
@class SBLockScreenView; 
static id (*_logos_orig$_ungrouped$SBLockScreenView$_defaultSlideToUnlockText)(SBLockScreenView*, SEL); static id _logos_method$_ungrouped$SBLockScreenView$_defaultSlideToUnlockText(SBLockScreenView*, SEL); 

#line 11 "/Users/firemoon777/LockLabel8/LockLabel8/LockLabel8.xm"



static id _logos_method$_ungrouped$SBLockScreenView$_defaultSlideToUnlockText(SBLockScreenView* self, SEL _cmd) {
    return [settings objectForKey:@"Text"];
}



static void loadSettings()
{
    settings = [[NSDictionary alloc] initWithContentsOfFile:SETTINGS_FILE];
}

static __attribute__((constructor)) void _logosLocalCtor_1ff1de77()
{
    loadSettings();
}
static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenView = objc_getClass("SBLockScreenView"); MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenView, @selector(_defaultSlideToUnlockText), (IMP)&_logos_method$_ungrouped$SBLockScreenView$_defaultSlideToUnlockText, (IMP*)&_logos_orig$_ungrouped$SBLockScreenView$_defaultSlideToUnlockText);} }
#line 29 "/Users/firemoon777/LockLabel8/LockLabel8/LockLabel8.xm"
