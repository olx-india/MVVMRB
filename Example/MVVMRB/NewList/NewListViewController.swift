//
//  NewListViewController.swift
//  MVVMRB
//
//  Created by Rohan on 05/03/25.
//Copyright © 2025 CocoaPods. All rights reserved.
//

import MVVMRB

protocol NewListViewControllerDependencyProtocol {
}

protocol NewListViewControllerProtocol {
}

class NewListViewController: ViewController<NewListViewControllerDependencyProtocol,
                              NewListViewModelProtocol,
                              NewListRouterProtocol>,
                              NewListViewControllerProtocol {
    
    private struct Constants {
        static let listViewCellIdentifier: String = "ListViewCell"
    }
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: Constants.listViewCellIdentifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension NewListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: Constants.listViewCellIdentifier, for: indexPath)
        cell.textLabel?.text = viewModel.rowData(indexPath.row)
        return cell
    }
}
