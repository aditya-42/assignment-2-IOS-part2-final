//
//  HistoryItemViewController.swift
//  CashRegisterApp
//
//  Created by Aditya Purohit on 17/10/24.
//

import UIKit

class HistoryItemViewController: UIViewController {

    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemQuantity: UILabel!
    @IBOutlet weak var orderDate: UILabel!
    
    var selectedIndex: Int = 0
    
    var purchasedProducts: [HistoryModel] {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.historyItems
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemName.text = "\(purchasedProducts[selectedIndex].name)"
        
        let totalPrice = purchasedProducts[selectedIndex].price * Double(purchasedProducts[selectedIndex].quantity)
        
        itemPrice.text = "\(totalPrice)"
        itemQuantity.text = "\(purchasedProducts[selectedIndex].quantity)"
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        let dateString = dateFormatter.string(from: purchasedProducts[selectedIndex].purchaseDate)
        orderDate.text = "\(dateString)"

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
