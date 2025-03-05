//
//  NewListViewModel.swift
//  MVVMRB
//
//  Created by Rohan on 05/03/25.
//Copyright © 2025 CocoaPods. All rights reserved.
//

import MVVMRB

protocol NewListViewModelDependencyProtocol {
    var data: [String] { get }
}

protocol NewListViewModelProtocol {
    func numberOfRows() -> Int
    func rowData(_ row: Int) -> String
}

class NewListViewModel: ViewModel<NewListViewModelDependencyProtocol>,
                              NewListViewModelProtocol {
    
    func numberOfRows() -> Int {
        return dependency.data.count
    }
    
    func rowData(_ row: Int) -> String {
        return dependency.data[row]
    }
    
}
