//
//  MathViewController.swift
//  kidsGamesAndLearningApp
//
//  Created by Lincoln Hipsher on 4/24/23.
//

import UIKit
import WebKit

class MathViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var videoOL: WKWebView!
    
    @IBOutlet weak var answer1OL: UITextField!
    
    @IBAction func answer1TextField(_ sender: UITextField) {
        if answer1OL.text == "" || answer2OL.text == "" {
            checkBtnOL.isEnabled = false
        }
        else {
            checkBtnOL.isEnabled = true
        }
    }
    
    @IBOutlet weak var answer2OL: UITextField!
    
    @IBAction func answer2TextField(_ sender: Any) {
        if answer2OL.text == "" || answer1OL.text == "" {
            checkBtnOL.isEnabled = false
        }
        else {
            checkBtnOL.isEnabled = true
        }
    }
    
    @IBOutlet weak var checkAnswer1OL: UILabel!
    
    @IBOutlet weak var checkAnswer2OL: UILabel!
    
    @IBAction func checkAnswersBtn(_ sender: UIButton) {
        if answer1OL.text == "8" {
            checkAnswer1OL.text = "✅"
        }
        else {
            checkAnswer1OL.text = "❌"
        }
        if answer2OL.text == "14" {
            checkAnswer2OL.text = "✅"
        }
        else {
            checkAnswer2OL.text = "❌"
        }
    }
    
    @IBOutlet weak var checkBtnOL: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Welcome \(userName)!"

        // Do any additional setup after loading the view.
        checkBtnOL.isEnabled = false
        
        getVideo(videoCode: "uQiUTFO78Jk")
    }
    
    func getVideo(videoCode:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        videoOL.load(URLRequest(url: url!))
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
