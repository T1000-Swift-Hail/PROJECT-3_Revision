//
//  RelatedProductTableViewCell.swift
//  Project 3
//
//  Created by Ahmed Alenazi on 27/04/1443 AH.
//

import UIKit



struct RelatedProductTableViewCellViewModel {
    let imege : UIImage?
    let titel : String
    
    
}




class RelatedProductTableViewCell: UITableViewCell {
    
    static let identifire = "RelatedProductTableViewCell"
    private let productImegeView : UIImageView = {
     let imegeView = UIImageView()
        
        imegeView.contentMode = .scaleAspectFill
        imegeView.clipsToBounds = true
        return imegeView
    }()
    
    private let labal : UILabel = {
        
        let labal = UILabel()
        labal.font = .systemFont(ofSize: 25)
        labal.numberOfLines = 0
        
        return labal
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(labal)
        contentView.addSubview(productImegeView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imegSize : CGFloat = contentView.frame.size.height
        productImegeView.frame = CGRect(x: 5, y: 0, width: imegSize, height: imegSize)
        labal.frame = CGRect(x: 15 + imegSize, y: 0, width: contentView.frame.size.width - 20 - imegSize, height: imegSize)
    }
    public func configure(with viewModel: RelatedProductTableViewCellViewModel) {
        labal.text = viewModel.titel
        productImegeView.image = viewModel.imege
        
    }

}
