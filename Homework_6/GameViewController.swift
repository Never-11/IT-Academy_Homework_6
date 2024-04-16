//
//  SecondScreen.swift
//  Homework_6
//
//  Created by Андрей Неверовский on 16.04.24.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var imegeViewCarTwo: UIImageView!
    @IBOutlet weak var imageViewCarOne: UIImageView!
    @IBOutlet weak var imageViewStoneOne: UIImageView!
    @IBOutlet weak var imageViewBush: UIImageView!
    @IBOutlet weak var imageViewBushOne: UIImageView!
    @IBOutlet weak var imageViewStoneTwo: UIImageView!
    @IBOutlet weak var imageViewStoneThree: UIImageView!
    @IBOutlet weak var imageViewBushThree: UIImageView!
    @IBOutlet weak var buttonLeft: UIButton!
    @IBOutlet weak var buttonRight: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imegeViewCarTwo.image = UIImage(named: "gameCarTwo")
        imageViewCarOne.image = UIImage(named: "gameCarOne")
        imageViewBush.image = UIImage(named: "bush")
        imageViewBushOne.image = UIImage(named: "bush")
        imageViewBushThree.image = UIImage(named: "bush")
        imageViewStoneOne.image = UIImage(named: "stoneOne")
        imageViewStoneTwo.image = UIImage(named: "stoneTwo")
        imageViewStoneThree.image = UIImage(named: "stoneOne")
    }
    
    @IBAction func buttonLeftPress(_ sender: UIButton) {
        
    }
    
    @IBAction func buttonRightPress(_ sender: UIButton) {
        
    }
    
}
