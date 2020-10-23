//
//  CollectionViewCell.swift
//  CollectionCompositeLayout
//
//  Created by Huseyin Can Dayan on 23.10.2020.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MyCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images: [UIImage] = [
            UIImage(named: "Image1"),
            UIImage(named: "Image2"),
            UIImage(named: "Image3"),
            UIImage(named: "Image4"),
            UIImage(named: "Image5"),
            UIImage(named: "Image6"),
            UIImage(named: "Image7")
        ].compactMap({ $0 })
        imageView.image = images.randomElement()
        contentView.clipsToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
}
