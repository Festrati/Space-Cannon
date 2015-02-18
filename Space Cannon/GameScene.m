//
//  GameScene.m
//  Space Cannon
//
//  Created by André Festrati on 17/02/15.
//  Copyright (c) 2015 André Festrati. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene
{
    SKNode *_mainLayer;
    SKSpriteNode *_cannon;
}

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    
    // adicionando bg
    SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"Starfield"];
    background.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    background.size = CGSizeMake(self.size.width * 0.42, self.size.height);
//    background.anchorPoint = CGPointZero;
    background.blendMode = SKBlendModeReplace;
    [self addChild:background];
    
    
    // add main layer
    _mainLayer = [[SKNode alloc] init];
    [self addChild:_mainLayer];
    
    
    //add cannon
    _cannon = [SKSpriteNode spriteNodeWithImageNamed:@"Cannon"];
    _cannon.position = CGPointMake(self.size.width * 0.5, 0.0f );
    [_mainLayer addChild:_cannon];
  
    //cannon action
    SKAction *rotateCannon = [SKAction sequence:@[[SKAction rotateByAngle:M_PI duration:2],
                                                  [SKAction rotateByAngle:-M_PI duration:2]]];
    
    [_cannon runAction:[SKAction repeatActionForever:rotateCannon]];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
