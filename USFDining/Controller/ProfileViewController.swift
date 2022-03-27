//
//  ProfileViewController.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import UIKit
import Parse

class ProfileViewController: UIViewController {

    
    @IBOutlet var ProfileImage: UIImageView!
    @IBOutlet var NameLabel: UILabel!
    @IBOutlet var ProfileTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLogoutButton(_ sender: Any) {
        
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        guard let windowsScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowsScene.delegate as? SceneDelegate else {return}
        
        delegate.window?.rootViewController = loginViewController
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
