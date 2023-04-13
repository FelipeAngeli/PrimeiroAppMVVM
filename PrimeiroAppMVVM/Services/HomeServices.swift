//
//  HomeServices.swift
//  PrimeiroAppMVVM
//
//  Created by Felipe  on 12/04/23.
//

import UIKit

class HomeService {

    func getHomeDataJson(completion: @escaping (HomeData?, Error?) -> Void) {
        if let url = Bundle.main.url(forResource: "HomeData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let homeData: HomeData = try JSONDecoder().decode(HomeData.self, from: data)
                completion(homeData, nil)
            } catch {
                completion(nil, error)
            }
        }
    }
    
    
}

