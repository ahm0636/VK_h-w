//
//  FirstItemTableViewController.swift
//  VK
//
//  Created by Aurelica Apps iOS Dev - 1 on 24/03/22.
//

import UIKit

class FirstItemTableViewController: UITableViewController {

    // MARK: - ATTRIBUTES
    let data = [["Vas", "Nikolay"],
                       ["Jack", "Kik", "Language"],
                       ["Remove Adds", "Tom", "Feedback"]]


    let names = ["ghbghb", "Uso", "Mahmud", "Andrey"]

    let arrayOfPhotos: [String] = ["sherry-christian-8Myh76_3M2U-unsplash.jpg", "sherry-christian-8Myh76_3M2U-unsplash.jpg", "sherry-christian-8Myh76_3M2U-unsplash.jpg" ]

    var matesArray = User.allMates[0].photo

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - SYSTEM FUNCTIONS

    override func numberOfSections(in tableView: UITableView) -> Int {
        return matesArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case self.tableView:
            return self.matesArray.count
        default:
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? FirstCellTableViewCell
        cell?.userName.text = self.names[indexPath.row]
        cell?.userImage.layer.cornerRadius = 75
        cell?.textLabel?.textColor = .white
        cell?.userImage.image = UIImage(named: "\(matesArray[indexPath.row].photo)")

        return cell ?? UITableViewCell()
    }

}
