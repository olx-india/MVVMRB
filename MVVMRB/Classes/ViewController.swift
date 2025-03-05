// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

import UIKit

/// Basic interface between a `Router` and the UIKit `UIViewController`.
open class ViewController<DependencyType, ViewModelType, RouterType>: UIViewController, ViewControllable {

    public var dependency: DependencyType
    public var viewModel: ViewModelType
    public var router: RouterType
    
    /// Initializer.
    /// - Parameters:
    ///   - dependency: The dependency used for this viewcontroller
    ///   - viewModel: The view model of module which defines a unit of  business logic.
    ///   - router: The router responsible to implement routing logic of MVVMRB module
    required public init(dependency: DependencyType, viewModel: ViewModelType, router: RouterType, bundle: Bundle? = nil) {
        
        self.dependency = dependency
        self.viewModel = viewModel
        self.router = router
        
        let nibIdentifier = String(describing: type(of: self))
        
        if bundle?.path(forResource: nibIdentifier, ofType: "nib") != nil {
            super.init(nibName: nibIdentifier, bundle: bundle)  // ✅ Available nib in passed bundle, using xib
        } else {
            super.init(nibName: nil, bundle: nil)  // ✅ No nib found, use programmatic setup
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
