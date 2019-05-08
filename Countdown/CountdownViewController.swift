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

        countdown.duration = 5 // seconds
        countdown.delegate = self

        timeLabel.font = UIFont.monospacedDigitSystemFont(ofSize: timeLabel.font.pointSize, weight: .regular)
    }
    
    private func updateViews() {
//        timeLabel.text = "\(countdown.timeRemaining)"
        timeLabel.text = string(from: countdown.timeRemaining)
    }
    

    @IBAction func startButtonPressed(_ sender: Any) {
        print("start")
        countdown.start()
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        print("reset")
    }
    
    // 5.019769 ....  => 00:00:05.02
    func string(from duration: TimeInterval) -> String {
        let date = Date(timeIntervalSinceReferenceDate: duration)
        return dateFormatter.string(from: date)
    }
    
    var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss.SS"
        formatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        return formatter
    }()
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    
    let countdown = Countdown()
}

extension CountdownViewController: CountdownDelegate {
    func countdownDidUpdate(timeRemaining: TimeInterval) {
        updateViews()
    }
    
    func countdownDidFinish() {
        
    }
}
