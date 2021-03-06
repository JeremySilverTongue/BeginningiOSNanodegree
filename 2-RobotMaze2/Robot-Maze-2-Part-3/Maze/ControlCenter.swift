//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {
    
    var mazeController: MazeController!
    
    func moveComplexRobot(myRobot: ComplexRobotObject) {
        
        
    

        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)
        let myWallInfo = checkWalls(myRobot)
        
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        let isTwoWayPath = myWallInfo.numberOfWalls == 2
        let isDeadEnd = myWallInfo.numberOfWalls == 3
        
        if isThreeWayJunction {
            if robotIsBlocked{
                debugPrint("At a three way junction and blocked")
                randomlyRotateRightOrLeft(myRobot)
            } else {
                debugPrint("At a three way junction and not blocked")
                continueStraightOrRotate(myRobot, wallInfo: myWallInfo)
            }
        }
        
        if isTwoWayPath {
            if robotIsBlocked {
                debugPrint("At a two way junction and blocked")
                turnTowardClearPath(myRobot, wallInfo: myWallInfo)
            } else {
                debugPrint("At a two way junction and not blocked")
                myRobot.move()
            }
        }
        
        if isDeadEnd{
            if robotIsBlocked{
                debugPrint("At a dead end junction and blocked")
                myRobot.rotateRight()
            } else {
                debugPrint("At a dead end way junction and not blocked")
                myRobot.move()
            }
        }
        
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
        self.moveComplexRobot(robot)
    }
    
}