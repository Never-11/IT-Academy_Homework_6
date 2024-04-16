//
//  ViewController.swift
//  Homework_6
//
//  Created by Андрей Неверовский on 15.04.24.
//

import UIKit

/// Экран 1. Запуск  приложение

class ViewController: UIViewController {
    
    //MARK: - IBOutlet
    
    @IBOutlet weak var imageViewLogo: UIImageView!
    @IBOutlet weak var buttonPlay: UIButton!
    @IBOutlet weak var buttonAchievements: UIButton!
    @IBOutlet weak var buttonSettings: UIButton!
    
    //MARK: - Lifecycle funcs
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewLogo.image = UIImage(named: "logoCar")
    }

    //MARK: - IBAction
    
    @IBAction func buttonPlayPress(_ sender: UIButton) {
    }
    
    @IBAction func buttonAchievementsPress(_ sender: UIButton) {
    }
    
    @IBAction func buttonSettingsPress(_ sender: UIButton) {
    }
    
}

