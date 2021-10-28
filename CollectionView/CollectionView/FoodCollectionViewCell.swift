//
//  FoodCollectionViewCell.swift
//  CollectionView
//
//  Created by Trung Dang on 22/10/2021.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    var stackView: UIStackView = UIStackView()
    var imageView: UIImageView = UIImageView()
    var labelFoodName: UILabel = UILabel()
    var labelFoodDescription: UILabel = UILabel()
    
    func autolayoutCell() {
        self.backgroundColor = .white
        self.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        //stackView setting
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        
        // autolayout imageView
        stackView.addArrangedSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "kimchi")
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        //auto layout label Food Name
        stackView.addArrangedSubview(labelFoodName)
        labelFoodName.translatesAutoresizingMaskIntoConstraints = false
        labelFoodName.text = "Food name"
        labelFoodName.font = UIFont.boldSystemFont(ofSize: 15)
     
        // auto layout Food Description
        stackView.addArrangedSubview(labelFoodDescription)
        labelFoodDescription.translatesAutoresizingMaskIntoConstraints = false
        labelFoodDescription.text = "Food description"
        labelFoodName.font = UIFont.systemFont(ofSize: 15)
    }
    
    var food: Food! {
        didSet {
            imageView.image = UIImage(named: food.imageName!)
            labelFoodName.text = food.foodName ?? ""
            labelFoodDescription.text =  food.foodDescription ?? ""
        }
    }
}
