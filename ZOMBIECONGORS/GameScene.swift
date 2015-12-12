//
//  GameScene.swift
//  ZOMBIECONGORS
//
//  Created by RAHUL SINHA on 12/5/15.
//  Copyright (c) 2015 rishabhgames. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let zombie=SKSpriteNode(imageNamed: "zombie1")
    var increment:CGFloat=10.0
    var movingX = Bool(true)
    var movingY = Bool(false)
    
    override func didMoveToView(view: SKView) {
       backgroundColor=SKColor.whiteColor()
       let background=SKSpriteNode(imageNamed: "background1")
        background.position=CGPoint(x: size.width/2, y: size.height/2)
        zombie.position=CGPoint(x: 400, y: 400)
        //Doubling the zombie size
        //zombie.size=CGSize(width: zombie.size.width * 2, height: zombie.size.height * 2)
       // zombie.setScale(2.0)
        //background.zRotation=CGFloat(M_PI)/8
        //Prevent invisible zombies
        background.zPosition  = -1
       addChild(background)
        addChild(zombie)
        let mysize=background.size
        print("Size:\(mysize)")
    }
    override func update(currentTime: NSTimeInterval) {
        var curr=zombie.position
        if(movingX){
            curr.x = curr.x + increment
            if(curr.x > 2048 ){
                movingX=false
                movingY=true
                curr.x=2048
                zombie.zRotation=1.57
                //increment = -increment
                
            }
            if(curr.x < 0 ) {
                movingX=false
                movingY=true
                curr.x=0
                increment = -10
                zombie.zRotation=4.71
                
            }
        }
        // (0,0)  , (2048,0))  (2048,1536) (0,1535)
        if(movingY){
            curr.y = curr.y + increment
            //curr.x=1800
            if(curr.y > 1536){
                movingY=false
                movingX=true
                increment = -10
                curr.y=1300
                curr.x=2048
                zombie.zRotation = 3.141
                //increment = -increment
               
            }
            if(curr.y < 0){
                movingY=false
                movingX=true
                curr.x=0
                curr.y=300
                increment=10
                zombie.zRotation=0
            
            }
        }
        
        zombie.position=curr
        print(curr)
    }
  }
