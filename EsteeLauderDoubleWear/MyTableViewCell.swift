//
//  MyTableViewCell.swift
//  EsteeLauderDoubleWear
//
//  Created by Emma Carpenetti on 7/22/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var shadeLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String) {
        shadeLabel.text = title
        // need to set up bg color?
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
