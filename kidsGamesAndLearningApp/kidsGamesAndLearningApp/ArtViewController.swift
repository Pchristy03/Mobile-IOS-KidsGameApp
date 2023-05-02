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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Welcome \(userName)!"

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var vidOutlet: WKWebView!
    
    @IBOutlet weak var a1Outlet: UITextField!
    
    @IBOutlet weak var a2Outlet: UITextField!
    
    @IBOutlet weak var caBtn: UIButton!
    
    @IBAction func caBtnPressed(_ sender: UIButton) {
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
