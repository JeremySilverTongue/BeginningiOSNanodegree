//
//  RobotTurningInstructions.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/5/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func randomlyRotateRightOrLeft(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        if randomNumber == 0 {
            robot.rotateRight()
        } else {
            robot.rotateLeft()
        }
        // You may want to paste your Part 1 implementation of randomlyRotateRightOrLeft(robot: ComplexRobotObject) here
    }
    
    func continueStraightOrRotate(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        if randomNumber == 1 {
            robot.move()
        } else {
            randomlyRotateRightOrLeft(robot)
        }
        // You may want to paste your Part 1 implementation of continueStraightOrRotate(robot: ComplexRobotObject) here
        
    }
}