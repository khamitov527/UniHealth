//
//  RestaurantsViewController.swift
//  USFDining
//
//  Created by beck on 26.03.2022.
//

import UIKit

class RestaurantsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var restaurantsArray: [Restaurant] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
