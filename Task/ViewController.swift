//
//  ViewController.swift
//  Task
//
//  Created by Artem Abramov on 26/03/2017.
//  Copyright © 2017 Elias Pietilä. All rights reserved.
//

import UIKit
import Intercom

class ViewController: UIViewController {    
    
    @IBAction func openIntercom(_ sender: Any) {
        Intercom.presentMessageComposer()
    }
 
}
