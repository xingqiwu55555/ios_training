//
//  CustomCell.swift
//  StoryBoard
//
//  Created by xmshen on 2022/8/4.
//

import UIKit


class CustomCell: UITableViewCell {
    
    var title = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let imageView = UIImageView(image: UIImage(named: "thoughtworks"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 20, y: 0, width: 60, height: 40)
        self.contentView.addSubview(imageView)
        

        title.text = "cell title"
        title.textColor = .black
        title.frame = CGRect(x: 100, y: 0, width: self.contentView.frame.width - 100, height: 40)
        self.contentView.addSubview(title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
