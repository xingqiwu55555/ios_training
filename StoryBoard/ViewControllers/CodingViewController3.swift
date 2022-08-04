//
//  CodingViewControllers.swift
//  StoryBoard
//
//  Created by xmshen on 2022/8/3.
//

import UIKit


class CodingViewController3: UIViewController {
    
    static let CustomCellIdentifier = "CustomCell"
    static let UITableViewCellIdentifier = "CustomCell"
    
    var tableData: [String] = [
        "title1111",
        "title2222",
        "title13333",
        "title114444",
        "title115555"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        configTableView()
    }
    
    func configTableView() {
        let tableView = UITableView()
        tableView.frame = CGRect(origin: .zero, size: self.view.frame.size)
        self.view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CodingViewController3.UITableViewCellIdentifier)
        tableView.register(CustomCell.self, forCellReuseIdentifier: CodingViewController3.CustomCellIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension CodingViewController3: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function, tableData[indexPath.row])
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        print(#function)
    }
}

extension CodingViewController3: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 12
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")!
//        indexPath.section.row
//        cell.textLabel?.text = "\(indexPath.row)"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CodingViewController3.CustomCellIdentifier) as! CustomCell
        cell.title.text = tableData[indexPath.row]
        
        return cell
    }
}
