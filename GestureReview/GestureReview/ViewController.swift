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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let onSwipeDown = UISwipeGestureRecognizer(target: self, action: "onGesture:")
        onSwipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(onSwipeDown)
        let onSwipeUp = UISwipeGestureRecognizer(target: self, action: "onGesture:")
        onSwipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(onSwipeUp)
    }
    
    func onGesture(gesture: UIGestureRecognizer){
        if let swipe = gesture as? UISwipeGestureRecognizer {
            switch swipe.direction {
            case UISwipeGestureRecognizerDirection.Down:
                gestureDirection.text = "Swiping Downy"
            case UISwipeGestureRecognizerDirection.Up:
                gestureDirection.text = "Swiping Upy"
            default:
                print("I can't tell :(")
            }
        }
    }
}

   // override func didReceiveMemoryWarning() {
      //  super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   // }




