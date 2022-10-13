//
//  FundingViewController.swift
//  Eco_p
//
//  Created by 마혁진 on 2022/10/11.
//

import UIKit

class FundingViewController: UIViewController {
    
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
        let recViewController = storyboard?.instantiateViewController(identifier: "FundingVC") as! FundingViewController
        
        self.navigationController?.pushViewController(recViewController, animated: false)
    }
    
    @IBAction func PopularityButton(_ sender: UIButton) {
        let popularityViewController = storyboard?.instantiateViewController(identifier: "Funding2VC") as! Funding2ViewController
        
        self.navigationController?.pushViewController(popularityViewController, animated: false)
    }
    
    @IBAction func ClosingButton(_ sender: UIButton) {
        let closingViewController = storyboard?.instantiateViewController(identifier: "Funding3VC") as! Funding3ViewController
        
        self.navigationController?.pushViewController(closingViewController, animated: false)
    }
    
    @IBAction func NewestButton(_ sender: UIButton) {
        let newestViewController = storyboard?.instantiateViewController(identifier: "Funding4VC") as! Funding4ViewController
        
        self.navigationController?.pushViewController(newestViewController, animated: false)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        let fundingNib = UINib(nibName:"FundingTableViewCell", bundle: nil)
        tableView.register(fundingNib, forCellReuseIdentifier: "FundingTableViewCell")
    }
    

}

extension FundingViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FundingTableViewCell", for: indexPath) as? FundingTableViewCell else { return UITableViewCell() }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
}
