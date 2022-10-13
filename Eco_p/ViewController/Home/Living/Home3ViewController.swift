//
//  Home3ViewController.swift
//  Eco_p
//
//  Created by 마혁진 on 2022/10/12.
//

import UIKit

class Home3ViewController: UIViewController {
    
    @IBAction func HomeButton(_ sender: UIButton) {
        let homeViewController = storyboard?.instantiateViewController(identifier: "HomeVC") as! HomeViewController
        
        self.navigationController?.pushViewController(homeViewController, animated: false)
    }
    
    
    @IBAction func FundingButton(_ sender: UIButton) {
        let fundingViewController = storyboard?.instantiateViewController(identifier: "FundingVC") as! FundingViewController
        self.navigationController?.pushViewController(fundingViewController, animated: false)
    }
    
    
    @IBAction func StoreButton(_ sender: Any) {
        let storeViewController = storyboard?.instantiateViewController(identifier: "StoreVC") as! StoreViewController
        
        self.navigationController?.pushViewController(storeViewController, animated: false)
    }
    
    
    @IBAction func EventButton(_ sender: UIButton) {
        let eventViewController = storyboard?.instantiateViewController(identifier: "EventVC") as! EventViewController
        
        self.navigationController?.pushViewController(eventViewController, animated: false)
    }
    
    @IBAction func LivingButton(_ sender: UIButton) {
        let livingViewController = storyboard?.instantiateViewController(identifier: "HomeVC") as! HomeViewController
        
        self.navigationController?.pushViewController(livingViewController, animated: false)
    }
    
    @IBAction func BeautyButton(_ sender: UIButton) {
        let beautyViewController = storyboard?.instantiateViewController(identifier: "Home2VC") as! Home2ViewController
        
        self.navigationController?.pushViewController(beautyViewController, animated: false)
    }
    
    @IBAction func FashionButton(_ sender: UIButton) {
        let fashionViewController = storyboard?.instantiateViewController(identifier: "Home3VC") as! Home3ViewController
        
        self.navigationController?.pushViewController(fashionViewController, animated: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

}
