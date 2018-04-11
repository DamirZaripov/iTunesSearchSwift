//
//  MediaTableViewCell.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 10.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit
import SDWebImage

class MediaTableViewCell: UITableViewCell {

    @IBOutlet weak var constraintDescriptionToButtom: NSLayoutConstraint!
    @IBOutlet weak var constraintPriceToDescription: NSLayoutConstraint!
    @IBOutlet weak var constraintPriceToBottom: NSLayoutConstraint!
    
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

    override func prepareForReuse() {
        super.prepareForReuse()
        constraintPriceToBottom.priority = .defaultLow
        constraintDescriptionToButtom.priority = .defaultHigh
        constraintPriceToDescription.priority = .defaultHigh
    }

    func prepareCell(with cellModel: SearchMediaCellModel) {
        
        downloadImage(with: cellModel.imageURL)
        
        authorLabel.text = cellModel.author
        nameLabel.text = cellModel.name
        
        if let description = cellModel.description {
            descriptionLabel.isHidden = false
            descriptionLabel.text = description
        } else {
            constraintPriceToBottom.priority = .defaultHigh
            constraintDescriptionToButtom.priority = .defaultLow
            constraintPriceToDescription.priority = .defaultLow
            descriptionLabel.isHidden = true
        }
        
        if let price = cellModel.price {
            priceLabel.text = self.price + String(price)
        } else {
            priceLabel.text = self.price + free
        }
        
    }
    
    func downloadImage(with url: URL) {
        mediaImageView.sd_setImage(with: url, completed: nil)
    }
    
}
