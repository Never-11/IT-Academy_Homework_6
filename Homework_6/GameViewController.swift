//
//  SecondScreen.swift
//  Homework_6
//
//  Created by Андрей Неверовский on 16.04.24.
//

import UIKit

class GameViewController: UIViewController {
    
    //MARK: - IBOutlet
    
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
    
    // MARK: - Properties
    
    var number: CGFloat = 30
    
    //MARK: - Lifecycle funcs
    
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
    
    //MARK: - Enum
    
    enum Direction {
        case left
        case right
    }
    
    //MARK: - Flow Functions
    
    func create() {
       
        let recognizerLeft = UITapGestureRecognizer(target: self, action: #selector (tapDetectedLeft))
        imageViewCarOne.addGestureRecognizer(recognizerLeft)
        let recognizerRight = UITapGestureRecognizer(target: self, action: #selector (tapDetectedRight))
        imageViewCarOne.addGestureRecognizer(recognizerRight)
    }
    
    func moveCircle(to direction: Direction) {
        switch direction {
            case .left:
                if imageViewCarOne.frame.origin.x  > number {
                    imageViewCarOne.frame.origin.x -= number
                }
            case .right:
                if view.frame.size.width - imageViewCarOne.frame.origin.x - imageViewCarOne.frame.size.width > number  {
                    imageViewCarOne.frame.origin.x += number
                }
        }
    }
    
    @objc func tapDetectedLeft() {
        moveCircle(to: .left)
    }
    
    @objc func tapDetectedRight() {
        moveCircle(to: .right)
    }
    
    //MARK: - IBAction
    
    @IBAction func buttonLeftPress(_ sender: UIButton) {
        tapDetectedLeft()
    }
    
    @IBAction func buttonRightPress(_ sender: UIButton) {
        tapDetectedRight()
    }
    
}
