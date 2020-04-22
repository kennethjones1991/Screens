//
//  NumberedViewController.swift
//  Screens
//
//  Created by Kenneth Jones on 4/22/20.
//  Copyright © 2020 Kenneth Jones. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(label)
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.center = view.center
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = navigationController?.viewControllers.count {
            label.text = String(number)
        }
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        // When presented modally
        // self.dismiss(animated: true)
        
        // But when part of the navigation stack...
        // This goes back one step in the stack,
//        self.navigationController?.popViewController(animated: true)
        
        // but we want to go all the way back to red
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
