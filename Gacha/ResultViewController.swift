//
//  ResultViewController.swift
//  Gacha
//
//  Created by 山尾かな on 2022/08/18.
//

import UIKit

class ResultViewController: UIViewController {

    var number: Int!
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        number = Int.random(in: 0...9)
        if number == 9{
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 7{
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        }else{
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
}
