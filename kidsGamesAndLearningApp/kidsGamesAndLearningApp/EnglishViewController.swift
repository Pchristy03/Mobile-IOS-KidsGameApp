//
//  EnglishViewController.swift
//  kidsGamesAndLearningApp
//
//  Created by Godding,Shelby S on 4/25/23.
//

import UIKit
import WebKit


class EnglishViewController: UIViewController {
    
    @IBOutlet weak var q1OL: UITextField!
    
    @IBOutlet weak var q2OL: UITextField!
    
    @IBOutlet weak var checkOL: UIButton!
    
    @IBOutlet weak var webViewOL: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func checkButton(_ sender: Any) {
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
