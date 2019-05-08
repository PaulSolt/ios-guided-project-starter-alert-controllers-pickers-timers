//
//  CountdownViewController.swift
//  Countdown
//
//  Created by Paul Solt on 5/8/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class CountdownViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func startButtonPressed(_ sender: Any) {
        print("start")
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        print("reset")
    }
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var startButton: UIButton!
}

