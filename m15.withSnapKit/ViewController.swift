//
//  ViewController.swift
//  m15.withSnapKit
//
//  Created by Ka4aH on 31.01.2023.
//

import UIKit
import SnapKit

struct DataText {
    let color: String
    let header: String
    let mainText: String
    let timeText: String
}

class ViewController: UIViewController {
    
    let data: [DataText] = [
        DataText(color: Constants.Text.image, header: Constants.Text.title, mainText: Constants.Text.text, timeText: Constants.Text.time),
        DataText(color: Constants.Text.image, header: Constants.Text.title, mainText: Constants.Text.text, timeText: Constants.Text.time)
    ]
    
    let cellId = "MyCustomCell"
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .plain)
        tableView.separatorStyle = .singleLine
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 82, bottom: 0, right: 16)
        tableView.separatorColor = Constants.Colors.grayColor
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(MyCustomCell.self, forCellReuseIdentifier: cellId)
        tableView.rowHeight = 93
        tableView.dataSource = self
        tableView.delegate = self
        setupViews()
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setupViews() {
        view.addSubview(tableView)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? MyCustomCell
        let viewModel = data[indexPath.row]
        cell?.configure(viewModel)
        return cell ?? UITableViewCell()
    }
}

