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
    var correctOne = false
    var correctTwo = false
    let url = URL(string: "https://www.youtube.com/embed/ELchwUIlWa8")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Welcome \(userName)!"
        checkAnswerBtnOutlet.isEnabled = false
        videoOutlet.load(URLRequest(url: url!))
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var videoOutlet: WKWebView!
    
    @IBOutlet weak var answerOneOutlet: UITextField!
    
    @IBOutlet weak var answerTwoOutlet: UITextField!
    
    
    @IBAction func answerOneEdit(_ sender: Any) {
        if answerOneOutlet.text == "" || answerTwoOutlet.text == "" {
            checkAnswerBtnOutlet.isEnabled = false
        }
        else {
            checkAnswerBtnOutlet.isEnabled = true
        }
    }
    
    @IBAction func answerTwoEdit(_ sender: Any) {
        if answerOneOutlet.text == "" || answerTwoOutlet.text == "" {
            checkAnswerBtnOutlet.isEnabled = false
        }
        else {
            checkAnswerBtnOutlet.isEnabled = true
        }
    }
    
    
    @IBAction func checkAnswerBtn(_ sender: UIButton) {
        let aOne = answerOneOutlet.text
        let aTwo = answerTwoOutlet.text
        if (aOne?.contains("weight") ?? false) && (aOne?.contains("space") ?? false) {
            answerOneYN.text = "✅"
            correctOne = true
        } else {
            answerOneYN.text = "❌"
        }

        if (aTwo?.contains("space") ?? false) {
            answerTwoYN.text = "✅"
            correctTwo = true
        } else {
            answerTwoYN.text = "❌"
        }
        if correctOne && correctTwo {
            completeSections = completeSections + 1
        }
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
