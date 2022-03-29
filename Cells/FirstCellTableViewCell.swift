//
//  FirstCellTableViewCell.swift
//  VK
//
//  Created by Aurelica Apps iOS Dev - 1 on 26/03/22.
//

import UIKit


class FirstCellTableViewCell: UITableViewCell {

//    let image: User
//    init(image: User) {
//        self.image = image
//        super.init(style: .default, reuseIdentifier: "cell")
//
//    }




    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userImage: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        self.userImage.contentMode = .scaleAspectFill
        self.userImage.clipsToBounds = true
//        self.userImage.image = image.image
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
