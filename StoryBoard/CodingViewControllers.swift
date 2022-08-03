//
//  CodingViewControllers.swift
//  StoryBoard
//
//  Created by xmshen on 2022/8/3.
//

import UIKit


class CodingViewController1: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    private func configSubviews() {
        let button = UIButton()
        button.setTitle("button", for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 30)
        self.view.addSubview(button)
        
//        let imageView = UIImageView
    }
}

class CodingViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
}

class CodingViewController3: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
}
