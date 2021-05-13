//
//  CovidSingleton.swift
//  CovidInJapan
//
//  Created by 坂馬啓太 on 2021/03/16.
//

import Foundation

class CovidSingleton {
    
    private init() {}
    static let shared = CovidSingleton()
    var prefecture:[CovidInfo.Prefecture] = []
}

