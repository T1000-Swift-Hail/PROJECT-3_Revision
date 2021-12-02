//
//  PhotoCollectionViewCell.swift
//  Project 3
//
//  Created by Ahmed Alenazi on 27/04/1443 AH.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PhotoCollectionViewCell"
    
    
    private let imegeView:UIImageView = {
   
        let imegeView = UIImageView()
        imegeView.contentMode = .scaleAspectFill
        imegeView.clipsToBounds = true
     return imegeView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imegeView)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews(){
        super.layoutSubviews()
        imegeView.frame = contentView.bounds
    }
    public func configure(with image:UIImage ){
        
        imegeView.image = image
        
    }
    
}
