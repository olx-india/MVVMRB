//
//  NewListDependency.swift
//  MVVMRB
//
//  Created by Rohan on 05/03/25.
//Copyright © 2025 CocoaPods. All rights reserved.
//

import Foundation

protocol NewListDependencyProtocol {
    var data: [String] { get }
}

class NewListDependency: NewListDependencyProtocol {
    let data: [String]
    
    init(data: [String]) {
        self.data = data
    }
}
