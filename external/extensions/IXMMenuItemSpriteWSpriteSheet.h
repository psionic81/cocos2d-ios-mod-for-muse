//
//  IXMMenuItemSpriteWSpriteSheet.h
//  IXMuseCES
//
//  Created by Field Tempus on 2013-01-05.
//  Copyright (c) 2013 Interaxon. All rights reserved.
//

#import "cocos2d.h"

@interface IXMMenuItemSpriteWSpriteSheet : CCMenuItemSprite
{
@public
	CGPoint touchBorderSize;
}

-(bool) isTouching: (CGPoint) localPoint;

@end
