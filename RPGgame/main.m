//
//  main.m
//  RPGgame
//
//  Creted by John Carson on 8/21/16.
//  Copyright © 2016 John Carson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerClass.h"

BOOL runGame();
BOOL askForReplay();



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL userWantsToPlay = YES;
        
        
         playerClass *player = [[playerClass alloc]init];
        
        player.Moral = 10;
        
        player.playerName = @"John";
        [player LoL];
        
        int choiceInput;
        
        
        NSLog (@"You've awoken inside a small rat cage... use the (1) wheel or (2) climb the tube");
        scanf ("%d", &choiceInput);
        
        if (choiceInput == 1) {
            NSLog (@"Choosing to use the wheel has increased your moral by 5!");
            player.Moral += 5;
            
            NSLog (@"Your total moral is now %fl", player.Moral);
            
        } else if (choiceInput == 2) {
            NSLog (@"Climbing the tube has proven you are not as strong as you thoguth you were, you've lost 5 moral, way to go.");
            player.Moral -= 5;
            
            NSLog (@"Your total moral has dropped by 5 and is now %fl", player.Moral);

        }
        
        
        printf ("You notice your life is controlled by moral and youre not sure if you want to move on.. Would you like to (1)climb into the rat trap or (2)plan your eescape?");
        scanf ("%d", &choiceInput);
        
        if (choiceInput == 1) {
            NSLog (@"You slowly climb into said rat trap. You have lost all Moral");
            player.Moral -= player.Moral;
            
            NSLog(@"Your total moral is now %fl", player.Moral);
            
        } else if (choiceInput == 2) {
            NSLog(@"You carefully plan your escape for three days... Unfortunately you fell to your death on the fourth");
            player.Moral = 0;
            
            NSLog(@"Your total moral is now %fl", player.Moral);
            
        }
        
    
            
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
return 0;
}