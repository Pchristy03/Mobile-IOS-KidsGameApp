//
//  EnglishViewController.swift
//  kidsGamesAndLearningApp
//
//  Created by Godding,Shelby S on 4/25/23.
//

import UIKit
import WebKit


class EnglishViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var q1OL: UITextField!
    
    @IBAction func q1textFieldAction(_ sender: Any) {
        if (q1OL.hasText==true && q2OL.hasText==true){
             checkOL.isEnabled=true
         }
         else{
             checkOL.isEnabled=false
         }
    }
    
    
    @IBAction func q2textFieldAction(_ sender: Any) {
        if (q1OL.hasText==true && q2OL.hasText==true){
             checkOL.isEnabled=true
         }
         else{
             checkOL.isEnabled=false
         }
    }
    
    @IBOutlet weak var q2OL: UITextField!
    
    @IBOutlet weak var checkOL: UIButton!
    
    @IBOutlet weak var webViewOL: WKWebView!
    
    @IBOutlet weak var q1Check: UILabel!
    
    @IBOutlet weak var q2Check: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkOL.isEnabled = false;
        
        self.title = "Welcome \(userName)!"
        getVideo(videoCode: "LdCOswMeXFQ")
        
       // checkOL.isEnabled=false
    }
    
    
    func getVideo(videoCode:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        webViewOL.load(URLRequest(url: url!))
    }
    
    @IBAction func checkButton(_ sender: Any) {
 
        if (q1OL.text=="yes" || q1OL.text=="Yes" || q1OL.text=="YES"){
            q1Check.text="✅"
        }
        else{
            q1Check.text="❌"
        }
        
        if (q2OL.text=="?"){
            q2Check.text="✅"
        }
        else{
            q2Check.text="❌"
        }
        
        if q1OL.text == "yes" || q1OL.text=="Yes" || q1OL.text=="YES" && q2OL.text == "?" {
            completeSections = completeSections + 1
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
