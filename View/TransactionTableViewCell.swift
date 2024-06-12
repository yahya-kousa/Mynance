//
//  TransactionTableViewCell.swift
//  Mynance
//
//  Created by Kousa, Yahya on 4/2/24.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {
    
    @IBOutlet var icon: UIImageView!
    @IBOutlet var category: UILabel!
    @IBOutlet var amount: UILabel!
    @IBOutlet var date: UILabel!
    @IBOutlet var desc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with transaction: Transaction)
    {
        if transaction.category == "Income"
        {
            icon.image = UIImage(systemName: "dollarsign.circle.fill")
        }
        else if transaction.category == "Groceries"
        {
            icon.image = UIImage(systemName: "cart.fill")
        }
        else
        {
            icon.image = UIImage(systemName: "bolt.fill")
        }
        icon.layer.cornerRadius = 10
        
        category.text = transaction.category
        amount.text = String(format: "$%.2f", transaction.amount)

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm"
        date.text = dateFormatter.string(from: transaction.date)
        desc.text = transaction.description
    }

}
