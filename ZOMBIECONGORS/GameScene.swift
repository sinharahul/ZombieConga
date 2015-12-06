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
       addChild(background)
    }
    
  }
