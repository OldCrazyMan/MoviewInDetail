//
//  MainViewController + TableView.swift
//  MoviewInDetail
//
//  Created by Tim Akhmetov on 27.02.2024.
//

import UIKit

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
   
    func setupTableView() {
        resultTableView.backgroundColor = .clear
        resultTableView.isHidden = false
        
        resultTableView.dataSource = self
        resultTableView.delegate = self
        
        registerCell()
    }
    
    func registerCell() {
        resultTableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
       
        cell.setupCell(viewModel: movieDataSource[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
}
