//
//  ViewController.swift
//  GestureReview
//
//  Created by Miranda Paquet on 8/24/15.
//  Copyright (c) 2015 Miranda Paquet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var gestureDirection: UILabel!
    
    // MARK: Overloads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let onSwipeDown = UISwipeGestureRecognizer(target: self, action: "onGesture:")
        onSwipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(onSwipeDown)
        
        let onSwipeUp = UISwipeGestureRecognizer(target: self, action:
            "onGesture:")
        onSwipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(onSwipeUp)

        let onSwipeLeft = UISwipeGestureRecognizer(target: self, action: "onGesture:")
        onSwipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(onSwipeLeft)

        let onSwipeRight = UISwipeGestureRecognizer(target: self, action: "onGesture:")
        onSwipeUp.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(onSwipeRight)

        
    }
    
    // MARK: Function(s)
    
    func onGesture(gesture: UIGestureRecognizer){
        if let swipe = gesture as? UISwipeGestureRecognizer {
            switch swipe.direction {
            
            case UISwipeGestureRecognizerDirection.Down:
                gestureDirection.text = "Swiping Downy"
            //up isn't working... still
            case UISwipeGestureRecognizerDirection.Up:
                gestureDirection.text = "Swiping Upy"
            case UISwipeGestureRecognizerDirection.Left:
                gestureDirection.text = "Swiping Lefty"
            case UISwipeGestureRecognizerDirection.Right:
                gestureDirection.text = "Swiping Righty"
            
                default:
                gestureDirection.text = "I can't tell :("
            }
        }
    }
}

   // override func didReceiveMemoryWarning() {
      //  super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   // }




