//
//  HomeViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Felipe  on 02/03/23.
//

import UIKit

class HomeViewModel {
    private var service: HomeService = HomeService()
    private var posts = [Posts] ()
    private var story = [Stories] ()

    
    public var getListPosts: [Posts] {
        posts
    }
        
    public var getListStory: [Stories] {
        story
    }

    public var numberOfItems: Int {
        2
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
    
    public func fecthAllRequest() {
        service.getHomeDataJson { homeData, error in
            if error == nil {
                self.posts = homeData?.posts ?? []
                self.story = homeData?.stories ?? []
            }
        }
    }
 
}

