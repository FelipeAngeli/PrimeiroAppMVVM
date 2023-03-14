//
//  HomeViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Felipe  on 02/03/23.
//

import UIKit

class HomeViewModel {
    
    
    
    
    
    private var posts = [
        Posts(profileImage: "img2", userName: "jack", postImage: "post1"),
        Posts(profileImage: "img4", userName: "samuel", postImage: "post2"),
        Posts(profileImage: "img3", userName: "carolina", postImage: "post3"),
        Posts(profileImage: "img6", userName: "paggy_101", postImage: "post4"),

    ]
    public var getListPosts: [Posts] {
        posts
    }
    
    
    private var story = [
        Stories(image: "img1", userName: "Add Story"),
        Stories(image: "img2", userName: "jack"),
        Stories(image: "img3", userName: "carolina"),
        Stories(image: "img4", userName: "samuel"),
        Stories(image: "img5", userName: "ariana josep"),
        Stories(image: "img6", userName: "puggy_101"),
        Stories(image: "img7", userName: "dheeraj_ks"),
    ]
    
    public var getListStory: [Stories] {
        story
    }
    

    public  var numberOfItems: Int {
        1
    }
    
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
   
    }
    
    
}
