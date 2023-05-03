//
//  ViewController.swift
//  kidsGamesAndLearningApp
//
//  Created by Parker Christy on 4/16/23.
//

import UIKit

var completeSections = 0

class ViewController: UIViewController {
    var name = ""

    @IBOutlet weak var artButtonOutlet: UIButton!
    @IBOutlet weak var historyButtonOutlet: UIButton!
    @IBOutlet weak var mathButtonOutlet: UIButton!
    @IBOutlet weak var scienceButtonOutlet: UIButton!
    @IBOutlet weak var crosswordOutlet: UIButton!
    @IBOutlet weak var memoryMatcherOutlet: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func nameFieldAction(_ sender: Any) {
        name = nameTextField.text!
        if(nameTextField.hasText){
            scienceButtonOutlet.isEnabled = true
            mathButtonOutlet.isEnabled = true
            historyButtonOutlet.isEnabled = true
            artButtonOutlet.isEnabled = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scienceButtonOutlet.isEnabled = false
        mathButtonOutlet.isEnabled = false
        historyButtonOutlet.isEnabled = false
        artButtonOutlet.isEnabled = false
        
        memoryMatcherOutlet.isEnabled = false
        crosswordOutlet.isEnabled = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if completeSections == 4 {
            memoryMatcherOutlet.isEnabled = true
            crosswordOutlet.isEnabled = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "matchSegue" {
            let destination = segue.destination as! MatchingViewController
            
            destination.userName = name;
        }
        if transition == "MathSegue" {
            let destination = segue.destination as! MathViewController
            
            destination.userName = name;
        }
        if transition == "scienceSegue" {
            let destination = segue.destination as! ScienceViewController
            
            destination.userName = name;
        }
        if transition == "artSegue" {
            let destination = segue.destination as! ArtViewController

            destination.userName = name;
        }
        if transition == "EnglishSegue" {
            let destination = segue.destination as! EnglishViewController

            destination.userName = name;
        }
        if transition == "crosswordSegue" {
            let destination = segue.destination as! CrosswordViewController

            destination.userName = name;
        }
    }


}

