//
//  ProfileViewController.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import UIKit
import Parse

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet var historyTableView: UITableView!
    @IBOutlet var ProfileImage: UIImageView!
    @IBOutlet var NameLabel: UILabel!
    @IBOutlet var ProfileTableView: UITableView!
    
    var foodsEaten = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyTableView.delegate = self
        historyTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLogoutButton(_ sender: Any) {
        
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        guard let windowsScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowsScene.delegate as? SceneDelegate else {return}
        
        delegate.window?.rootViewController = loginViewController
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "FoodsEaten")
        query.includeKey("name")
        
        query.findObjectsInBackground { (foodsEaten, error) in
            if foodsEaten != nil {
                self.foodsEaten = foodsEaten!
                self.historyTableView.reloadData()
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodsEaten.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = historyTableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell") as! ProfileTableViewCell
        
        let foodItem = foodsEaten[indexPath.row]
        
        let foodName = foodItem["name"] as! String
        let foodCalories = foodItem["calories"] as! String
//        let foodDate = foodItem["createdAt"] as! String
        
        cell.CategoryLabel.text = foodName
        cell.ValueLabel.text = foodCalories
//        cell.dateLabel.text = foodDate
        
        return cell;
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
