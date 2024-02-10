//
//  WelcomViewController.swift
//  About Me
//
//  Created by Алексей Попов on 09.02.2024.
//

import UIKit

final class WelcomViewController: UIViewController {

    @IBOutlet var welcomLabel: UILabel!
    
    var welcom: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomLabel.text = welcom
    }
}
