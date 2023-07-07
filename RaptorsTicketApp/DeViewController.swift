//
//  DeViewController.swift
//  RaptorsTicketApp
//
//  Created by user231417 on 7/6/23.
//


import UIKit

class DeViewController: UIViewController {
    
    var txtFormFVCD = Purchase()
        
    @IBOutlet weak var Item: UILabel!
    @IBOutlet weak var Quantity: UILabel!
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var Date: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backBarBtnItem = UIBarButtonItem()
            backBarBtnItem.title = "Manager Panel"
            navigationItem.backBarButtonItem = backBarBtnItem
        
        Item.text = txtFormFVCD.type
        Quantity.text = txtFormFVCD.Qnty.description
        Total.text = txtFormFVCD.output
        Date.text = txtFormFVCD.dateTimeString
        }
    }
