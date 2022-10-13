//
//  Store2ViewController.swift
//  Eco_p
//
//  Created by 마혁진 on 2022/10/12.
//

import UIKit

class Store2ViewController: UIViewController {
    
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

    @IBAction func RecButton(_ sender: UIButton) {
        let recViewController = storyboard?.instantiateViewController(identifier: "StoreVC") as! StoreViewController
        
        self.navigationController?.pushViewController(recViewController, animated: false)
    }
    
    @IBAction func PopularityButton(_ sender: UIButton) {
        let popularityViewController = storyboard?.instantiateViewController(identifier: "Store2VC") as! Store2ViewController
        
        self.navigationController?.pushViewController(popularityViewController, animated: false)
    }
    
    @IBAction func ClosingButton(_ sender: UIButton) {
        let closingViewController = storyboard?.instantiateViewController(identifier: "Store3VC") as! Store3ViewController
        
        self.navigationController?.pushViewController(closingViewController, animated: false)
    }
    
    @IBAction func NewestButton(_ sender: UIButton) {
        let newestViewController = storyboard?.instantiateViewController(identifier: "Store4VC") as! Store4ViewController
        
        self.navigationController?.pushViewController(newestViewController, animated: false)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }



}
