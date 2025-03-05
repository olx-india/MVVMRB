//
//  NewListBuilder.swift
//  MVVMRB
//
//  Created by Rohan on 05/03/25.
//Copyright © 2025 CocoaPods. All rights reserved.
//

import Foundation
import MVVMRB

class NewListBuilderDependency: Component<NewListDependencyProtocol>,
                              NewListViewControllerDependencyProtocol,
                              NewListViewModelDependencyProtocol,
                              NewListRouterDependencyProtocol {
    
    var data: [String] {
        return dependency.data
    }
}

final class NewListBuilder: Builder<NewListDependencyProtocol> {
    func build() -> NewListViewControllerProtocol? {
        guard let dependency = dependency else { return nil }
        let component = NewListBuilderDependency(dependency: dependency)
        let viewModel = NewListViewModel(dependency: component)
        let router = NewListRouter(dependency: component, viewModel: viewModel)
        let viewController = NewListViewController(dependency: component, viewModel: viewModel, router: router)
        return viewController
    }
}
