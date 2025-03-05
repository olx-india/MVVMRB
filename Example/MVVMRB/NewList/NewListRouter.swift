//
//  NewListRouter.swift
//  MVVMRB
//
//  Created by Rohan on 05/03/25.
//Copyright © 2025 CocoaPods. All rights reserved.
//

import MVVMRB

protocol NewListRouterDependencyProtocol {
}

protocol NewListRouterProtocol {
}

class NewListRouter: Router<NewListRouterDependencyProtocol,
                              NewListViewModelProtocol>,
                              NewListRouterProtocol {
}
