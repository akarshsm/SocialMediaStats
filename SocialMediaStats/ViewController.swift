//
//  ViewController.swift
//  SocialMediaStats
//
//  Created by Akarsh S M on 18/01/17.
//  Copyright © 2017 Akarsh S M. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//            let loginButton = LoginButton( readPermissions: [ .publicProfile ])
//            loginButton.center = view.center
//            view.addSubview(loginButton)
        
        //FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
        // Optional: Place the button in the center of your view.
        //        loginButton.center = self.view.center;
        //        [self.view addSubview:loginButton];
        
        let fb_LoginButton = FBSDKLoginButton()
        
        fb_LoginButton.center = view.center;
        view.addSubview(fb_LoginButton);
    }
    
    @IBOutlet weak var currentFbStatus: UITextField!

    @IBAction func checkFbStatus(_ sender: UIButton) {
    
        if((FBSDKAccessToken.current()) != nil){
            currentFbStatus.text = "loged In"
        }else{
            currentFbStatus.text =  "loged Out"
        }
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

