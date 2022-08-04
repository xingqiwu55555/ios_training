//
//  ViewController.swift
//  ViewController
//
//  Created by xmshen on 2022/8/4.
//

import UIKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction
    func jumpButtonClicked() {
        let pageViewController = PageViewController()
        self.navigationController?.pushViewController(pageViewController, animated: true)
    }
}



class PageViewController: UIViewController {
    
    override func loadView() {
        print(#function)
        
        super.loadView()
    }

    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .lightGray
        
        let jumpButton = UIButton()
        jumpButton.translatesAutoresizingMaskIntoConstraints = false
        jumpButton.setTitle("Jump to NextViewController", for: .normal)
        jumpButton.addTarget(self, action: #selector(jumpButtonClicked), for: .touchUpInside)
        self.view.addSubview(jumpButton)
        
        NSLayoutConstraint.activate([
            jumpButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            jumpButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
        super.viewWillAppear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        print(#function)
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        print(#function)
        super.viewDidLayoutSubviews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
        super.viewDidDisappear(animated)
    }
    
    deinit {
        print(#function)
    }
    
    
    @objc
    func jumpButtonClicked() {
        let nextViewController = NextViewController()
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }


}


class NextViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
    }
}

