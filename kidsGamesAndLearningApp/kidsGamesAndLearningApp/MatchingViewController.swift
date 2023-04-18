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
    var selected = false
    
    init(image: String, id: Int, selected: Bool) {
        self.image = image
        self.id = id
        self.selected = selected
    }
}

class MatchingViewController: UIViewController {
    
    var tiles = [Tile]()
    var tileLocations = [UIImageView]()
    var gest = [UITapGestureRecognizer]()
    
    var initialImage = "questionmark"
    
    let tileA = Tile(image: "cow", id: 8, selected: false)
    
    let tileB = Tile(image: "bird", id: 7, selected: false)
    
    let tileC = Tile(image: "cat", id: 6, selected: false)

    let tileD = Tile(image: "rabbit", id: 5, selected: false)
    
    let tileE = Tile(image: "dog", id: 4, selected: false)
    
    let tileF = Tile(image: "mouse", id: 3, selected: false)
    
    let tileG = Tile(image: "horse", id: 2, selected: false)

    let tileH = Tile(image: "sheep", id: 1, selected: false)
    
    let tileI = Tile(image: "cow", id: 9, selected: false)
    
    let tileJ = Tile(image: "bird", id: 10, selected: false)
    
    let tileK = Tile(image: "cat", id: 11, selected: false)

    let tileL = Tile(image: "rabbit", id: 12, selected: false)
    
    let tileM = Tile(image: "dog", id: 13, selected: false)
    
    let tileN = Tile(image: "mouse", id: 14, selected: false)
    
    let tileO = Tile(image: "horse", id: 15, selected: false)

    let tileP = Tile(image: "sheep", id: 16, selected: false)
    
    
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
    
    
    func randomTileLocation(){
        var i = 0
        tiles.shuffle()
        for tileL in tileLocations {
            tileL.image = UIImage(named: tiles[i].image)
            i = i + 1;
        }
    }
    
    var selectedList = [UIImageView]()
    var total = 0
    
    @objc func imageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        
        var count = 0
        
        for t in tileLocations {
            t.restorationIdentifier = String(tiles[count].id)
            count = count + 1
        }
        
            if let tileView = gesture.view as? UIImageView {
                print(tileView.restorationIdentifier!)
                selectedList.append(tileView)
                    total = total + Int(tileView.restorationIdentifier!)!
                    if total == 17 {
                        print("match")
                        total = 0
                    }
                }
            }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var i = 0
        
        tiles = [tileA, tileB, tileC, tileD,
                 tileE, tileF, tileG, tileH,
                tileI, tileJ, tileK, tileL,
                tileM, tileN, tileO, tileP]
        
        tileLocations = [tileOne, tileTwo, tileThree, tileFour, tileFive, tileSix,
                         tileSeven, tileEight, tileNine, tileTen, tileEleven,
                         tileTwelve, tileThirteen, tileFourteen, tileFifteen, tileSixteen]
    
        randomTileLocation()
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap6 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap7 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap8 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap9 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap10 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap11 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap12 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap13 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap14 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap15 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        let tap16 = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        
        gest = [tap1, tap2, tap3, tap4, tap5, tap6, tap7, tap8, tap9, tap10, tap11, tap12, tap13, tap14, tap15, tap16]
        
        for t in tileLocations {
            t.isUserInteractionEnabled = true
            t.addGestureRecognizer(gest[i])
            i = i + 1;
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
