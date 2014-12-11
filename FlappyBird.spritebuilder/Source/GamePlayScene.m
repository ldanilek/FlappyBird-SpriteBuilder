#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character *)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0;
}

-(void)update:(CCTime)delta
{
    // put update code here
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    [character flap];
}
// put new methods here

- (void)showScore {
    //never called. fucking setup
}

@end
