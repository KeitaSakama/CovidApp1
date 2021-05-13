//
//  API.swift
//  CovidInJapan
//
//  Created by 坂馬啓太 on 2021/03/13.
//

import UIKit

struct CovidAPI {
    static func getTotal(completion: @escaping (CovidInfo.Total) -> Void) {
        let url = URL(string: "https://covid19-japan-web-api.now.sh/api//v1/total")
        let request = URLRequest(url: url!)
        URLSession.shared.dataTask(with: request){(data, responce, error) in
            
            if let data = data {
                let result = try! JSONDecoder().decode(CovidInfo.Total.self, from: data)
                completion(result)
            }
        }.resume()
    }
    static func getPrefecture(completion: @escaping ([CovidInfo.Prefecture]) -> Void) {
        let url = URL(string: "https://covid19-japan-web-api.now.sh/api//v1/prefectures")
        let request = URLRequest(url: url!)
        URLSession.shared.dataTask(with: request){(data, responce, error) in
            
            if let data = data {
                let result = try! JSONDecoder().decode([CovidInfo.Prefecture].self, from: data)
                completion(result)
            }
        }.resume()
    }
    
}
