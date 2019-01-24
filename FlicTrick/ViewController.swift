//
//  ViewController.swift
//  FlicTrick
//
//  Created by Jose on 10/1/19.
//

import UIKit

class ViewController: UIViewController, SCLFlicManagerDelegate, SCLFlicButtonDelegate
{
	override func viewDidLoad()
	{
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		// Please use your own credentials
		// They can be created at https://partners.flic.io/friends/signup
		
		SCLFlicManager.configure(with: self, defaultButtonDelegate: self, appID: "<insert appID>", appSecret: "<insert appSecret>", backgroundExecution: false)
	}
	
	func flicManager(_ manager: SCLFlicManager, didGrab button: SCLFlicButton?, withError error: Error?)
	{
		if error != nil
		{
			print("Could not grab button object: \(error!.localizedDescription)")
		}
	}

	@IBAction func toFlicApp(_ sender: UIButton)
	{
		SCLFlicManager.shared()?.grabFlicFromFlicApp(withCallbackUrlScheme: "flico")
	}
}

