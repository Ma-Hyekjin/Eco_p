//
//  EventViewController.swift
//  Eco_p
//
//  Created by 마혁진 on 2022/10/11.
//

import UIKit

class EventViewController: UIViewController {

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
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        let eventNib = UINib(nibName: "EventTableViewCell", bundle: nil)
        tableView.register(eventNib, forCellReuseIdentifier: "EventTableViewCell")
        
    }


}

extension EventViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "EventTableViewCell", for: indexPath) as? EventTableViewCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 245
    }
    
    
}
