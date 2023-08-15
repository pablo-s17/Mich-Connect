//
//  ClassCell.swift
//  Michigan Connect
//
//  Created by Pablo Segovia on 8/15/23.
//

import UIKit

class ClassCell: UITableViewCell {

    @IBOutlet weak var overallView: UIView!
    @IBOutlet weak var classLocbutton: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
        classLocbutton.contentHorizontalAlignment = .left
        
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
