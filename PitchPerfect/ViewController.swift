//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Rohith Macherla  on 5/9/17.
//  Copyright © 2017 rmacherla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordButton.isEnabled = false
        stopRecordingButton.isEnabled = true
        print("Record Button was pressed.")
        recordingLabel.text = "Recording In Progress"
    }
    @IBAction func stopRecording(_ sender: Any) {
        print("Stop Recording Button was pressed.")
        recordingLabel.text = "Recording has Stopped"
        stopRecordingButton.isEnabled = false
        recordButton.isEnabled = true
    }

}

