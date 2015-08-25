//
//  ViewController.swift
//  GestureReview
//
//  Created by Miranda Paquet on 8/24/15.
//  Copyright (c) 2015 Miranda Paquet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gesture: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var onSwipe = UISwipeGestureRecognizer(target: self, action: "onGesture:")
        
        onSwipe.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(onSwipe)
    }
    
    func onSwipe(UISwipeGestureRecognizer,UISwipeGestureRecognizerDirection){
    }
}

   // override func didReceiveMemoryWarning() {
      //  super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   // }




