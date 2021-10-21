//
//  CoffeeTableViewCell.swift
//  Experian iOS Tech Test
//
//  Created by Experian ECS
//

import UIKit

class CoffeeTableViewCell: UITableViewCell {

    @IBOutlet weak var borderLine: UIView!
    @IBOutlet weak var coffeeImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var background: UIView!

    @IBOutlet weak var strengthLabel: UILabel!
    @IBOutlet weak var flavourLabel: UILabel!
    @IBOutlet weak var milkLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        background.layer.cornerRadius = self.frame.height / 2.5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        
    }
    
}
