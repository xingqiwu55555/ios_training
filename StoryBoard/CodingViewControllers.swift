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

        configSubviews()
    }
    
    private func configSubviews() {
        let title = UILabel()
        title.text = "coding view controller1"
        title.textColor = .white
        title.textAlignment = .center
        title.frame = CGRect(x: 0, y: 80, width: self.view.frame.width, height: 30)
//        self.view.addSubview(title)
        
        let button = UIButton()
        button.setTitle("navigate to next cv", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.frame = CGRect(x: 100, y: 140, width: 200, height: 30)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
//        self.view.addSubview(button)
        
        let container = UIView()
        container.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200)
        container.backgroundColor = .blue
        container.addSubview(title)
        container.addSubview(button)
        self.view.addSubview(container)
        
        let imageView = UIImageView(image: UIImage(named: "thoughtworks"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 10, y: 200, width: 100, height: 100)
        self.view.addSubview(imageView)
        
        let textField = UITextField()
        textField.placeholder = "please enter text"
        textField.frame = CGRect(x: 100, y: 250, width: 300, height: 50)
        self.view.addSubview(textField)
    }
    
    @objc
    func buttonClicked() {
        let vc2 = CodingViewController2()
        
//        self.navigationController?.pushViewController(vc2, animated: true)
        self.present(vc2, animated: true)
    }
}

class CodingViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .lightGray

    }
}

class CodingViewController3: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
}
