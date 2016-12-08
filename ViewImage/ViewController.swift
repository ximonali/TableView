//
//  ViewController.swift
//  ViewImage
//
//  Created by macadmin on 2016-03-12.
//  Copyright (c) 2016 macadmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    //Vars
    var nameArray: [String] = [];
    var imgArray: [UIImage?] = [];
    var contador: Int = 0;
    var globalIndex: Int = 0;
    
    @IBOutlet weak var myView: UIView!
    
    @IBAction func btnAdd(_ sender: UIButton) {
        
        
        let userInput = txtTexto.text;

        
        
        if (!userInput!.isEmpty && userInput != nil){
            
            nameArray.append(userInput!)
            
            if nameArray.count < 3  {
                imgArray.append(UIImage(named: "google"))
            }else
            {
                imgArray.append(UIImage(named: "imagelogin"))
            }
          
            
            
            txtTexto.resignFirstResponder(); // Para ocultar el Teclado
            self.myTableView.reloadData();
            txtTexto.text = "";
            contador += 1;
            
        }else
        {
            //println("No Add")

        }
        
        
        
    }
    

    @IBOutlet weak var txtTexto: UITextField!

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self; // Mi Clase Actual (el mismo)
        myTableView.dataSource = self; // De donde vienen los datos (el mismo)
        
//        imgArray.append( )
//        imgArray.append( UIImage(named: "loginimage"))
//        imgArray.append( UIImage(named: "female2"))
//        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return nameArray.count
    }
    
    //AQUI MODIFICAR A MI PUTA TABLAVIEWCELL NUEVA!!!!!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Cambiamos la table TableView por myTableView (que es mi nueva table view)
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! TableViewCell
        
        cell.lblDetalle.text = nameArray[(indexPath as NSIndexPath).row]; // Agrego mi Texto del Array
        
        cell.imgDetallada.image = imgArray [(indexPath as NSIndexPath).row];
        if ((indexPath as NSIndexPath).row % 2 == 0) {
            cell.backgroundColor = UIColor.lightGray;
        
        }else{
            cell.backgroundColor = UIColor.gray;
        }
  
        
        
        //cell.imgDetallada.image = imgArray[contador]
        
        
        //cell.imgDetallada.image = UIImage(named: "female2");
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
            globalIndex = (indexPath as NSIndexPath).row;
            self.performSegue(withIdentifier: "go2DetailsVC", sender: self)

        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "go2DetailsVC"{
        
        let myUserDetails = segue.destination as! DetailsVC;
        
        myUserDetails.imgUserInfo = imgArray[globalIndex]; //Picture
        myUserDetails.myDetails = nameArray[globalIndex];


    
    }
    }

    
    
    

}

