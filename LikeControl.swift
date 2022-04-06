//
//  LikeControl.swift
//  VK
//
//  Created by Aurelica Apps iOS Dev - 1 on 05/04/22.
//

import UIKit


class LikeControl: UIControl {


    @IBOutlet weak var imageView: UIImageView?
    @IBOutlet weak var counterLabel: UILabel?

    var likesCounter: Int = 0

    override var isSelected: Bool {
        didSet {
            imageView?.image = isSelected ? UIImage(named: "redHeart") : UIImage(named: "heart")

            if isSelected {
                likesCounter += 1
            } else {
                likesCounter -= 1
            }

            counterLabel?.text = "\(likesCounter)"
        }
    }


}
