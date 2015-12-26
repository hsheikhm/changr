//
//  ProfileViewController.swift
//  changr
//
//  Created by Samuel Overloop on 17/12/15.
//  Copyright © 2015 Samuel Overloop. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    // MARK: Properties
    var ref: Firebase!
    var appDelegate: AppDelegate!
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        ref = appDelegate.ref
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    // MARK: Actions
    @IBAction func menuButton(sender: AnyObject) {
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }

    
    @IBAction func logoutButton(sender: AnyObject) {
        ref.unauth()
        appDelegate.window?.rootViewController = appDelegate.rootController
        appDelegate.window!.makeKeyAndVisible()
    }

}
