//
//  CustomTableViewCell.swift
//  SwiftMiamiCurriculum
//
//  Created by Jimmy Gutierrez on 6/19/19.
//  Copyright © 2019 JimmyG. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    static let reuseIdentifier = "CustomCell"
    static let nibName = "CustomCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

}
