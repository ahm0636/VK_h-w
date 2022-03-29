//
//  Model.swift
//  VK
//
//  Created by Aurelica Apps iOS Dev - 1 on 26/03/22.
//

import Foundation
import UIKit


enum ProfileType: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }

    case beginner = "Beginner"
    case intermediate = "Intermediate"
    case advanced = "Advanced"

}

    // MARK: - Group Model
struct Group {
    let numberOfMembers: Int
    let name: String
    let isPrivate: Bool
    let photo: [Photo]

}

extension Group {
    static let allGroups: [Group] = [
    Group(numberOfMembers: 23, name: "4 Group", isPrivate: true, photo: [Photo(photo: "https://www.drivelinebaseball.com/wp-content/uploads/2020/12/push-up-2.jpg", name: "it is a photo")]),
    Group(numberOfMembers: 23, name: "3 Group", isPrivate: true, photo: [Photo(photo: "3 photo", name: "it is a photo")]),
    Group(numberOfMembers: 23, name: "2 Group", isPrivate: true, photo: [Photo(photo: "2 photo", name: "it is a photo")]),
    Group(numberOfMembers: 23, name: "1 Group", isPrivate: true, photo: [Photo(photo: "1 photo", name: "it is a photo")])
    ]
}
    // MARK: - Photo model
struct Photo {
    let photo: String
    let name: String
}

extension Photo {
    static let allPhotos: [Photo] = [
    Photo(photo: "https://www.drivelinebaseball.com/wp-content/uploads/2020/12/push-up-2.jpg", name: "f")]
}
    // MARK: - User model
struct User {
    let name: String
    let profileType: ProfileType.RawValue
    let id = UUID()
    let photo: [Photo]
    let groups: [Group]
    var age: Int
    let surname: String
    let aboutMe: String
}

extension User {
    static let allMates: [User] = [
        User(name: "S", profileType: "Advanced", photo: [Photo(photo: "https://www.drivelinebaseball.com/wp-content/uploads/2020/12/push-up-2.jpg", name: "ph")], groups: [Group(numberOfMembers: 23, name: "BBC", isPrivate: true, photo: [Photo(photo: "sherry-christian-8Myh76_3M2U-unsplash.jpg", name: "ph")])], age: 34, surname: "Su", aboutMe: "News"),
        User(name: "S", profileType: "Advanced", photo: [Photo(photo: "first photo", name: "ph")], groups: [Group(numberOfMembers: 23, name: "2", isPrivate: true, photo: [Photo(photo: "BBC photo", name: "ph")])], age: 34, surname: "Su", aboutMe: "News"),
        User(name: "3", profileType: "Advanced", photo: [Photo(photo: "first photo", name: "ph")], groups: [Group(numberOfMembers: 23, name: "4", isPrivate: true, photo: [Photo(photo: "second photo", name: "ph")])], age: 34, surname: "Su", aboutMe: "News"),
        User(name: "S", profileType: "Advanced", photo: [Photo(photo: "fourth photo", name: "ph")], groups: [Group(numberOfMembers: 23, name: "B5", isPrivate: true, photo: [Photo(photo: "BBC photo", name: "ph")])], age: 34, surname: "Su", aboutMe: "News")
    ]
}




