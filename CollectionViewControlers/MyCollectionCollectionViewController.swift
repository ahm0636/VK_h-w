//
//  MyCollectionCollectionViewController.swift
//  VK
//
//  Created by Aurelica Apps iOS Dev - 1 on 24/03/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {



    var matesPhotosArray: [Photo?] = []

    let allFriends = User.allMates


    var friend: User!

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func test(_ sender: Any) {
        print("tapped")
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friend.photo.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? MatesDetailedCollectionViewCell


        cell?.imageView.image =  UIImage(named: friend.photo[indexPath.row].photo)

//        cell?.friendsName.text = friend.name


        return cell ?? UICollectionViewCell()
    }

    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width / 2, height: self.view.frame.width / 2 )
    }

}
