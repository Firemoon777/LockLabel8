
// Logos by Dustin Howett
// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>

#define SETTINGS_FILE @"/var/mobile/Library/Preferences/ru.firemoon777.LockLabel8Bundle.plist"

NSDictionary *settings;

%hook SBLockScreenView

- (id)_defaultSlideToUnlockText
{
    return [settings objectForKey:@"Text"];
}

%end

static void loadSettings()
{
    settings = [[NSDictionary alloc] initWithContentsOfFile:SETTINGS_FILE];
}

%ctor
{
    loadSettings();
}