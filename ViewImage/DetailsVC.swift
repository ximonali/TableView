//
//  DetailsVC.swift
//  
//
//  Created by macadmin on 2016-03-14.
//
//

import UIKit

class DetailsVC: UIViewController {

    //Var

    var myDetails: String = "";
    var imgUserInfo: UIImage!;
    
    
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var lblDetails: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        profilePicture.image = imgUserInfo;
        lblDetails.text = "Details: \(myDetails)";

        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
