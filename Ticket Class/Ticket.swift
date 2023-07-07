//
//  Ticket.swift
//  RaptorsTicketApp
//
//  Created by user231417 on 7/6/23.
//

import Foundation

class Ticket {
    
  var type: String
  var quantity: Int
  var price: Double
    
    init(type: String, quantity: Int, price: Double){
        self.type = type
        self.quantity = quantity
        self.price = price
    }
}
