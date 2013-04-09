//
//  IXMMenuItemSpriteWSpriteSheet.m
//  IXMuseCES
//
//  Created by Field Tempus on 2013-01-05.
//  Copyright (c) 2013 Interaxon. All rights reserved.
//

#import "IXMMenuItemSpriteWSpriteSheet.h"

@implementation IXMMenuItemSpriteWSpriteSheet

-(id) init
{
	if (![super init])
		return nil;
	
	touchBorderSize = ccp(0, 0);
	
	return self;
}
/*
-(CGRect) rect
{
	CCSprite *normalSprite = (CCSprite *) normalImage_;
	//CCSpriteFrame *normalFrame = [normalSprite displayFrame];
	
	//CGPoint spritePos = position_
	
	CGRect spriteRect = normalSprite->rect_;
	spriteRect.size.width *= 2;
	spriteRect.size.height *= 2;
	
	return spriteRect;

	//return CGRectMake( position_.x - contentSize_.width*anchorPoint_.x,
	//				  position_.y - contentSize_.height*anchorPoint_.y,
	//				  contentSize_.width, contentSize_.height);
}
 */

-(bool) isTouching: (CGPoint) localPoint
{
	CCSprite *normalSprite = (CCSprite *) normalImage_;
	CGRect spriteRect = normalSprite.textureRect;
	
	spriteRect.origin.x = normalSprite.offsetPosition.x - touchBorderSize.x;
	spriteRect.origin.y = normalSprite.offsetPosition.y - touchBorderSize.y;
	
	spriteRect.size.width *= 2;
	spriteRect.size.height *= 2;
	
	spriteRect.size.width += touchBorderSize.x * 2;
	spriteRect.size.height += touchBorderSize.y * 2;
	
	if( CGRectContainsPoint( spriteRect, localPoint ) )
	{
		return true;
	}
	
	return false;
}

@end
