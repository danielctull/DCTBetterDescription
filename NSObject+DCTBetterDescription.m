//
//  NSObject+DCTBetterDescription.m
//  DCTBetterDescription
//
//  Created by Daniel Tull on 25.09.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import "NSObject+DCTBetterDescription.h"

@implementation NSObject (DCTBetterDescription)

- (NSString *)dct_betterDescriptionWithProperties:(NSArray *)properties {
	
	NSMutableString *betterDescription = [[[NSMutableString alloc] init] autorelease];
	
	[betterDescription appendFormat:@"<%@: %p", [[self class] description], self];
	
	for (NSString *propertyName in properties)
		[betterDescription appendFormat:@"; %@ = %@", propertyName, [self valueForKey:propertyName]];
	
	[betterDescription appendString:@">"];
	
	return betterDescription;
}

@end
