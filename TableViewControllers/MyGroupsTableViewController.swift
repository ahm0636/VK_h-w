//
//  SecondItemTableViewController.swift
//  VK
//
//  Created by Aurelica Apps iOS Dev - 1 on 24/03/22.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {


    // MARK: - ATTRIBUTES
    var myGroups: [Group] = []

    var groupNames = User.allMates[0].groups

    // MARK: - Table view data source
    override func viewDidLoad() {
        super.viewDidLoad()
        if let firstGroup = Group.allGroups.first {
            myGroups.append(firstGroup)
        }

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroups.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? SecondCellTableViewCell
        let group = myGroups[indexPath.row]
        cell?.groupName.text = group.name
        //        cell?.groupPhoto.layer.cornerRadius = 75
        //        cell?.groupPhoto.image = UIImage(named: "\(groupNames[indexPath.row].photo)")
        cell?.textLabel?.textColor = .black
        return cell ?? UITableViewCell()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let allGroupsVC = segue.destination as? AllGroupsViewController {
            allGroupsVC.myGroups = myGroups
            allGroupsVC.delegate = self

        }
    }
}

extension MyGroupsTableViewController: AllGroupsViewControllerDelegate {
    func userUnsubscribe(group: Group) {
        myGroups.append(group)
        tableView.reloadData()
    }

    func userSubscribe(group: Group) {
        myGroups.removeAll(where: { $0.id == group.id})
        tableView.reloadData()
    }


}

