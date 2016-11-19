//
//  MainCategories.swift
//  DrinkingGameApp
//
//  Created by MacBook Air on 11/16/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import Foundation

class Openers {
    
    private var _categoryMain: String!
    private var _subCategory: [String]!
    
    var categoryMain: String {
        return _categoryMain
    }
    
    var subCategory: [String] {
        return _subCategory
    }
    
    init(categoryMain: String, subCategory: [String]) {
        
        _categoryMain = categoryMain
        _subCategory = subCategory
    }
    
}

