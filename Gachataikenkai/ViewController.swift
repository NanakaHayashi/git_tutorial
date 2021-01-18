//
//  ViewController.swift
//  Gachataikenkai
//
//  Created by 早司菜々花 on 2020/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gachaImageview : UIImageView!
    @IBOutlet var gachabutton : UIButton!
    @IBOutlet var haikeiImageview : UIImageView!
    var number : Int!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        gachabutton.layer.cornerRadius = gachabutton.bounds.height/2
        
    }
    @IBAction func startgacha(){
        number = Int.random(in: 0...100)
        print(number)
        if number < 50{
           print("naushika")
            gachaImageview.image = UIImage(named: "nausika.png")
            haikeiImageview.image = UIImage(named: "sabaku.jpg")
        }else if number > 50 && number < 90{
            print("ponyo")
            gachaImageview.image = UIImage(named: "ponyo.jpg")
            haikeiImageview.image = UIImage(named: "umi.jpg")
        }else{
            print("rapyuta")
            gachaImageview.image = UIImage(named: "rapyuta.jpg")
            haikeiImageview.image = UIImage(named: "sora.jpg")
        }
    }
    


}

