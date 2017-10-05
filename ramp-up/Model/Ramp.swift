//
//  Ramp.swift
//  ramp-up
//
//  Created by Steve Baker on 5/10/17.
//  Copyright © 2017 SGB Imagery. All rights reserved.
//

import Foundation
import SceneKit

class Ramp {
    class func getPipe() -> SCNNode {
        let pipeScene = SCNScene(named: "art.scnassets/pipe.dae")!
        let pipe = pipeScene.rootNode.childNode(withName: "pipe", recursively: true)!
        pipe.scale = SCNVector3Make(0.0022, 0.0022, 0.0022)
        pipe.position = SCNVector3Make(-1, 0.8, -1)
        return pipe
    }
    class func getPyramid() -> SCNNode {
        let pyramidScene = SCNScene(named: "art.scnassets/pyramid.dae")!
        let pyramid = pyramidScene.rootNode.childNode(withName: "pyramid", recursively: true)!
        pyramid.scale = SCNVector3Make(0.0052, 0.0052, 0.0052)
        pyramid.position = SCNVector3Make(-1, -0.4, -1)
        return pyramid
    }
    class func getQuarter() -> SCNNode {
        let quarterScene = SCNScene(named: "art.scnassets/quarter.dae")!
        let quarter = quarterScene.rootNode.childNode(withName: "quarter", recursively: true)!
        quarter.scale = SCNVector3Make(0.0052, 0.0052, 0.0052)
        quarter.position = SCNVector3Make(-1, -2.4, -1)
        return quarter
    }
    class func rotate(node: SCNNode){
        let round = SCNAction.rotateBy(x: 0, y: CGFloat(0.01 * Double.pi), z: 0, duration: 0.1)
        let rotate = SCNAction.repeatForever(round)
        node.runAction(rotate)
    }
}
