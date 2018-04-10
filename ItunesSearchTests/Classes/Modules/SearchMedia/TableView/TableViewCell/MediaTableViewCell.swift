//
//  MediaTableViewCell.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 10.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class MediaTableViewCell: UITableViewCell {

    @IBOutlet weak var constraintDescriptionToButtom: NSLayoutConstraint!
    @IBOutlet weak var constraintImageToBottom: NSLayoutConstraint!
    @IBOutlet weak var constraintImageToDescription: NSLayoutConstraint!
    
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var mediaImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    let price = "Price: "
    let free = "Free"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mediaImageView.image = nil
    }

    func prepareCell(with cellModel: SearchMediaCellModel) {
        
        authorLabel.text = cellModel.author
        nameLabel.text = cellModel.name
        
        if let description = cellModel.description {
            descriptionLabel.text = description
        } else {
            constraintImageToBottom.priority = .defaultHigh
            constraintDescriptionToButtom.priority = .defaultLow
            constraintImageToDescription.priority = .defaultLow
        }
        
        if let price = cellModel.price {
            priceLabel.text = self.price + String(price)
        } else {
            priceLabel.text = self.price + free
        }
        
    }
}
