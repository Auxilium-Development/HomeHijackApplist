#include "HHIRootListController.h"

@implementation HHIRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}
- (void)ContactmeTwitter {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/MidnightChip"]];
}

- (void)AuxiliumDiscord {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://discord.gg/E9T5gDF"]];
}
- (void)Paypal {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.paypal.me/AuxilumDevelopment"]];
}
- (void)Patreon {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.patreon.com/auxiliumdev"]];
}
- (void)ContactmeReddit {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.reddit.com/user/midnightchips"]];
}
@end
