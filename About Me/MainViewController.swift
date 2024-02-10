//
//  ViewController.swift
//  About Me
//
//  Created by Алексей Попов on 09.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 5
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomCV = segue.destination as? WelcomViewController
        welcomCV?.welcom = "Welcome, \(userNameTF.text ?? "")!"
    }
    
    @IBAction func logInButtonAction() {
        guard userNameTF.text == "Alex" else {
            showAlert(
                withTitle: "Invalid login or passvord",
                andMessage: "Pleas, enter correct login and password"
            )
            return
        }
        
        guard passwordTF.text == "11" else {
            showAlert(
                withTitle: "Invalid login or passvord",
                andMessage: "Pleas, enter correct login and password"
            )
            return
        }
    }
    
    @IBAction func forgotUserNameBA() {
        showAlert(withTitle: "Oops!", andMessage: "Your user name is Alex 🤪")
    }
    
    @IBAction func forgotPasswordBA() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 11 😇")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage massedge: String) {
        let alert = UIAlertController(title: title, message: massedge, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
}

