//
//  ViewController.swift
//  kidsGamesAndLearningApp
//
//  Created by Parker Christy on 4/16/23.
//

import UIKit

class ViewController: UIViewController {
    var name = ""

    @IBOutlet weak var crosswordOutlet: UIButton!
    @IBOutlet weak var memoryMatcherOutlet: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func nameFieldAction(_ sender: Any) {
        name = nameTextField.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        
        if transition == "matchSegue" {
            var destination = segue.destination as! MatchingViewController
            
            destination.userName = name;
        }
    }


}

