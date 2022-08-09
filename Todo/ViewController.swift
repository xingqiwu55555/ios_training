//
//  ViewController.swift
//  Todo
//
//  Created by xmshen on 2022/8/9.
//

import UIKit

class CreateTodoViewController: UIViewController {
    
    @IBOutlet var confirmBtn: UIButton!
    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        confirmBtn.addTarget(self, action: #selector(onConfirm), for: .touchUpInside)
    }

    @objc
    func onConfirm() {
        let content: String = textField.text!
        StorageManager.saveTodoItem(content: content)
        textField.text = ""
    }

}

