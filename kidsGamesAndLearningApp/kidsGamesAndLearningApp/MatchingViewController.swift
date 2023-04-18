//
//  MatchingViewController.swift
//  kidsGamesAndLearningApp
//
//  Created by Parker Christy on 4/17/23.
//

import UIKit

class Tile {
    
    var image = ""
    var id = 0
    
    init(image: String, id: Int) {
        self.image = image
        self.id = id
    }
}

var tiles = [Tile]()

class MatchingViewController: UIViewController {
    
    //Outlets for all the tiles on the board
    @IBOutlet weak var tileOne: UIImageView!
    @IBOutlet weak var tileTwo: UIImageView!
    @IBOutlet weak var tileThree: UIImageView!
    @IBOutlet weak var tileFour: UIImageView!
    @IBOutlet weak var tileSeven: UIImageView!
    @IBOutlet weak var tileSixteen: UIImageView!
    @IBOutlet weak var tileFifteen: UIImageView!
    @IBOutlet weak var tileFourteen: UIImageView!
    @IBOutlet weak var tileThirteen: UIImageView!
    @IBOutlet weak var tileTwelve: UIImageView!
    @IBOutlet weak var tileEleven: UIImageView!
    @IBOutlet weak var tileTen: UIImageView!
    @IBOutlet weak var tileNine: UIImageView!
    @IBOutlet weak var tileEight: UIImageView!
    @IBOutlet weak var tileSix: UIImageView!
    @IBOutlet weak var tileFive: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
