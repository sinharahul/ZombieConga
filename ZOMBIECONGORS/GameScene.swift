//
//  GameScene.swift
//  ZOMBIECONGORS
//
//  Created by RAHUL SINHA on 12/5/15.
//  Copyright (c) 2015 rishabhgames. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
       backgroundColor=SKColor.whiteColor()
       let background=SKSpriteNode(imageNamed: "background1")
       let zombie=SKSpriteNode(imageNamed: "zombie1")
        background.position=CGPoint(x: size.width/2, y: size.height/2)
        zombie.position=CGPoint(x: 400, y: 400)
        //Doubling the zombie size
        zombie.size=CGSize(width: zombie.size.width * 2, height: zombie.size.height * 2)
        //background.zRotation=CGFloat(M_PI)/8
        //Prevent invisible zombies
        background.zPosition  = -1
       addChild(background)
        addChild(zombie)
        let mysize=background.size
        print("Size:\(mysize)")
    }
    
  }
