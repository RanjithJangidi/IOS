//
//  HistoryViewController.swift
//  RaptorsTicketApp
//
//  Created by user231417 on 7/6/23.
//

import Foundation


import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTable: UITableView!
    
    var txtFormFVC = [Purchase]()
    var rowSelected : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        let backBarBtnItem = UIBarButtonItem()
            backBarBtnItem.title = "Manager Panel"
            navigationItem.backBarButtonItem = backBarBtnItem
            myTable.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "DCell"{
                     if let destVC = segue.destination as? DeViewController {
                        destVC.txtFormFVCD = txtFormFVC[rowSelected!]
                  }
            }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return txtFormFVC.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
          
        cell?.textLabel?.text = txtFormFVC[indexPath.row].type
        cell?.detailTextLabel?.text = txtFormFVC[indexPath.row].Qnty.description
        
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        rowSelected = indexPath.row
             performSegue(withIdentifier: "DCell", sender: self)
    }
    
   
}
