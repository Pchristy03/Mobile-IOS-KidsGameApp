//
//  ArtViewController.swift
//  kidsGamesAndLearningApp
//
//  Created by Bales,Kylie S on 4/25/23.
//

import UIKit
import WebKit

class ArtViewController: UIViewController {
    
    var userName = ""
    var a1correct = false
    var a2correct = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        caBtn.isEnabled = false
        
        self.title = "Welcome \(userName)!"
        
        getVideo(videoCode: "3zdXqKKsoCQ")

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var vidOutlet: WKWebView!
    
    @IBOutlet weak var a1Outlet: UITextField!
    
    @IBOutlet weak var a2Outlet: UITextField!
    
    @IBOutlet weak var checkA1: UILabel!
    
    @IBOutlet weak var checkA2: UILabel!
    
    @IBOutlet weak var caBtn: UIButton!
    
    @IBAction func answerOneEdit(_ sender: Any) {
        if a1Outlet.text == "" || a2Outlet.text == "" {
            caBtn.isEnabled = false
        }
        else {
            caBtn.isEnabled = true
        }
    }
    
    @IBAction func answerTwoEdit(_ sender: Any) {
        if a1Outlet.text == "" || a2Outlet.text == "" {
            caBtn.isEnabled = false
        }
        else {
            caBtn.isEnabled = true
        }
    }
    
    @IBAction func caBtnPressed(_ sender: UIButton) {
        let a2 = a2Outlet.text
        if a1Outlet.text == "Spectral color" {
                    checkA1.text = "✅"
                    a1correct = true
                }
                else {
                    checkA1.text = "❌"
                }
                if (a2?.contains("light") ?? true) && (a2?.contains("dark") ?? true) {
                    checkA2.text = "✅"
                    a2correct = true
                }
                else {
                    checkA2.text = "❌"
                }
                if a1correct && a2correct == true { completeSections = completeSections + 1
                }
        }
           
            func getVideo(videoCode:String) {
                let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
                vidOutlet.load(URLRequest(url: url!))
            }
            
}
