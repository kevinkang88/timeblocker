//
//  ViewController.swift
//  TimeBlocker
//
//  Created by dong yoon kang on 8/3/15.
//  Copyright (c) 2015 yoon kevin kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count = 0
    
    func updateTime(){
        count++
        timeLabel.text = "\(count)"
        
    }

    @IBOutlet var timeLabel: UILabel!
    
    @IBAction func pauseTapped(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func playTapped(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopTapped(sender: AnyObject) {
        timer.invalidate()
        count = 0
        timeLabel.text = "0"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

