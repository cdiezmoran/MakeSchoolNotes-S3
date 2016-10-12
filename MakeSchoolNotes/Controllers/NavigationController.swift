//
//  NavigationController.swift
//  MakeSchoolNotes
//
//  Created by Carlos Diez on 10/12/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import Foundation
import UIKit

class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationBar.barTintColor = UIColor.flatYellowColor()
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
}
