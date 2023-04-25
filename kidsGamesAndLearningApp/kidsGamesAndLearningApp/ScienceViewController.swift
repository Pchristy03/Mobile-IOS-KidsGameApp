//
//  ScienceViewController.swift
//  kidsGamesAndLearningApp
//
//  Created by student on 4/18/23.
//

// Max Science

import UIKit
import WebKit

class ScienceViewController: UIViewController {
    
    var userName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Welcome \(userName)!"

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var videoOutlet: WKWebView!
    
    @IBOutlet weak var answerOneOutlet: UITextField!
    
    @IBOutlet weak var answerTwoOutlet: UITextField!
    
    
    @IBAction func answerOneEditingDone(_ sender: Any) {
    }
    
    @IBAction func answerTwoEditingDone(_ sender: Any) {
    }
    
    
    @IBAction func checkAnswerBtn(_ sender: UIButton) {
    }
    
    @IBOutlet weak var answerOneYN: UILabel!
    
    @IBOutlet weak var answerTwoYN: UILabel!
    
    
    @IBOutlet weak var checkAnswerBtnOutlet: UIButton!
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
