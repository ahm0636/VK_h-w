//
//  FirstItemTableViewController.swift
//  VK
//
//  Created by Aurelica Apps iOS Dev - 1 on 24/03/22.
//

import UIKit

class FirstItemTableViewController: UITableViewController {

    // MARK: - ATTRIBUTES

    var matesArray = User.allMates[0].photo

    let allFriends = User.allMates

    // all friends
    var friends = [String]()
    // contains section title
    var sectionTitle = [String]()
    //contains key and friend array
    var friendDict = [String:[String]]()


    override func viewDidLoad() {
        super.viewDidLoad()

        friends = ["Alisa", "Lisa", "Moana", "Jack", "Andrey", "Tim", "Bob"]

        // should be fixed
//        let friend = "\(allFriends.map { $0.name })"
//        let friends = [friend]
//        var friendDict = [String: [String]]()

        sectionTitle = Array(Set(friends.compactMap({String($0.prefix(1))})))
        sectionTitle.sort()
        sectionTitle.forEach({friendDict[$0] = [String]()})
        friends.forEach({friendDict[String($0.prefix(1))]?.append($0)})

    }

    // MARK: - SYSTEM FUNCTIONS

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        friendDict[sectionTitle[section]]?.count ?? 0

//        switch tableView {
//        case self.tableView:
//            return self.allFriends.count
//        default:
//            return 0
//        }
    }

    var currentIndex: Int = 0

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.currentIndex = indexPath.row
        self.performSegue(withIdentifier: "showDetails", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails", let receiver = segue.destination as? MyCollectionCollectionViewController {
            let item = self.allFriends[self.currentIndex]
            receiver.friend = item
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? FirstCellTableViewCell

        cell?.userImage.layer.cornerRadius = 20
        cell?.textLabel?.textColor = .white
        let friend = allFriends[indexPath.row]
        cell?.userName.text = friendDict[sectionTitle[indexPath.section]]?[indexPath.row]
//        cell?.userName.text = friend.name

        cell?.userImage.image = UIImage(named: friend.avatar)
        cell?.userImage.layer.shadowRadius = 5.0
        cell?.userImage.layer.shadowColor = UIColor.black.cgColor
        cell?.userImage.layer.shadowOffset = CGSize.zero
        cell?.userImage.layer.shadowOpacity = 0.5


        return cell ?? UITableViewCell()
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.cellForRow(at: indexPath)
        return cell?.frame.height ?? 100
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        sectionTitle.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sectionTitle[section]
    }

    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        sectionTitle
    }

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        <#code#>
//    }


}
