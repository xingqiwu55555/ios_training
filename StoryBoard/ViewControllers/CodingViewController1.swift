//
//  CodingViewController1.swift
//  StoryBoard
//
//  Created by xmshen on 2022/8/4.
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
        title.frame = CGRect(x: 0, y: 0, width: self.view.frame.width - 32, height: 30)
//        self.view.addSubview(title)
        
        let button = UIButton()
        button.setTitle("navigate to next cv", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.frame = CGRect(x: 50, y: 40, width: 200, height: 30)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addSubview(button)
        
        let container = UIView()
//        container.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200)
        container.backgroundColor = .blue
        container.addSubview(title)
        container.addSubview(button)
        container.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(container)
        
        let imageView = UIImageView(image: UIImage(named: "thoughtworks"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 10, y: 200, width: 100, height: 100)
        self.view.addSubview(imageView)
        
        let textField = UITextField()
        textField.placeholder = "please enter text"
        textField.frame = CGRect(x: 100, y: 250, width: 300, height: 50)
        self.view.addSubview(textField)
        // NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 16),
            container.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            container.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -32),
            container.heightAnchor.constraint(equalToConstant: 200),
            button.topAnchor.constraint(equalTo: container.topAnchor, constant: 40),
            button.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: container.bottomAnchor, constant: 16),
            textField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
        ])
    }
    
    @objc
    func buttonClicked() {
        let vc2 = CodingViewController2()
        
//        self.navigationController?.pushViewController(vc2, animated: true)
        self.present(vc2, animated: true)
    }
}
