//
//  TodoListViewControlller.swift
//  Todo
//
//  Created by xmshen on 2022/8/9.
//

import UIKit


class TodoListViewController: UIViewController {
    
    var todos: [String] = []
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "删除全部", style: UIBarButtonItem.Style.plain, target: self, action: #selector(deleteAll))
        
        initTableView()
    }
    
    func initTableView() {
        tableView.frame = CGRect(origin: .zero, size: self.view.frame.size)
        self.view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        reloadTabeView(data: StorageManager.getTodoList())
    }
    
    @objc
    func deleteAll(sender: UIBarButtonItem) {
        StorageManager.deleteAllTodoList()
        reloadTabeView(data: [])
    }
    
    func reloadTabeView(data: Array<String>) {
        todos = data
        tableView.reloadData()
    }

}

extension TodoListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function, todos[indexPath.row])
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        print(#function)
    }
}

extension TodoListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")!
        cell.textLabel?.text = "\(todos[indexPath.row])"
        
        return cell
    }
}
