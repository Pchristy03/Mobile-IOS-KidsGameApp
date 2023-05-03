//
//  CrosswordViewController.swift
//  kidsGamesAndLearningApp
//
//  Created by Millett,Wesley M on 4/25/23.
//

import UIKit

class CrosswordViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var matt1OL: UITextField!
    @IBOutlet weak var matt2OL: UITextField!
    @IBOutlet weak var matt3OL: UITextField!
    @IBOutlet weak var matt4OL: UITextField!
    @IBOutlet weak var matt5OL: UITextField!
    @IBOutlet weak var matt6OL: UITextField!
    @IBOutlet weak var vol1OL: UITextField!
    @IBOutlet weak var vol2OL: UITextField!
    @IBOutlet weak var vol3OL: UITextField!
    @IBOutlet weak var vol4OL: UITextField!
    @IBOutlet weak var vol5OL: UITextField!
    @IBOutlet weak var vol6OL: UITextField!
    @IBOutlet weak var math1OL: UITextField!
    @IBOutlet weak var math3OL: UITextField!
    @IBOutlet weak var math4OL: UITextField!
    @IBOutlet weak var moon1OL: UITextField!
    @IBOutlet weak var moon2OL: UITextField!
    @IBOutlet weak var moon4OL: UITextField!
    @IBOutlet weak var checkIMGOL: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Welcome \(userName)!"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func checkBTNAC(_ sender: Any) {
        if (matt1OL.text?.uppercased() == "M" &&
            matt2OL.text?.uppercased() == "A" &&
            matt3OL.text?.uppercased() == "T" &&
            matt4OL.text?.uppercased() == "T" &&
            matt5OL.text?.uppercased() == "E" &&
            matt6OL.text?.uppercased() == "R" &&
            vol1OL.text?.uppercased() == "V" &&
            vol2OL.text?.uppercased() == "O" &&
            vol3OL.text?.uppercased() == "L" &&
            vol4OL.text?.uppercased() == "U" &&
            vol5OL.text?.uppercased() == "M" &&
            vol6OL.text?.uppercased() == "E" &&
            math1OL.text?.uppercased() == "M" &&
            math3OL.text?.uppercased() == "T" &&
            math4OL.text?.uppercased() == "H" &&
            moon1OL.text?.uppercased() == "M" &&
            moon2OL.text?.uppercased() == "O" &&
            moon4OL.text?.uppercased() == "N") {
            checkIMGOL.image = UIImage(named: "checkMark")
        }
        else {
            checkIMGOL.image = UIImage(named: "X")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
