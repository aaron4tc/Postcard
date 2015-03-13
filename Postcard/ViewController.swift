//
//  ViewController.swift
//  Postcard
//
//  Created by Zhongjie Chen on 6/03/2015.
//  Copyright (c) 2015 Zhongjie Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var enterNameTextField: UITextField!
	@IBOutlet weak var enterMessageTextField: UITextField!
	@IBOutlet weak var mailButton: UIButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	@IBAction func sendMailButtonPressed(sender: UIButton) {
        // Make both labels visible
//      nameLabel.hidden = false
//		messageLabel.hidden = false

        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
		messageLabel.text = enterMessageTextField.text
		messageLabel.textColor = UIColor.redColor()
		
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
		enterMessageTextField.text = ""
		enterMessageTextField.resignFirstResponder()
		
		mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
	}
}

