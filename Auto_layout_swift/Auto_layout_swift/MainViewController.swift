//
//  MainViewController.swift
//  Auto_layout_swift
//
//  Created by Trung Dang on 21/10/2021.
//

import UIKit

class MainViewController: UIViewController {
    
    var mainStackView:UIStackView = UIStackView()
    
    var stackView1:UIStackView = UIStackView()
    var imageView: UIImageView = UIImageView()
    var stackView11:UIStackView = UIStackView()
    var labelFirst: UILabel?
    var labelMiddle: UILabel?
    var labelLast: UILabel?
    var stackView12: UIStackView = UIStackView()
    var txtFirst:UITextField?
    var txtMiddle:UITextField?
    var txtLast:UITextField?
    
    var txtViewDescription = UITextView()
    
    var stackView2: UIStackView = UIStackView();
    
    var btnCancel:UIButton = UIButton()
    var btnSave:UIButton = UIButton()
    var btnClear:UIButton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        self.autoLayoutStackView()
        self.autoLayoutStackView1()
        self.autoLayoutTextViewDescription()
        self.autoLayoutStackView2()
    }
    
    private func autoLayoutStackView() {
        view.addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: UIDevice.setSize(iPhone: 10, iPad: 20)).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -UIDevice.setSize(iPhone: 10, iPad: 20)).isActive = true
        mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: UIDevice.setSize(iPhone: 40, iPad: 60)).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -UIDevice.setSize(iPhone: 10, iPad: 20)).isActive = true
        
        mainStackView.axis = .vertical
        mainStackView.alignment = .fill
        mainStackView.distribution = .fill
        mainStackView.spacing = 10
    }
    
    private func autoLayoutStackView1() {
        mainStackView.addArrangedSubview(stackView1)
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.heightAnchor.constraint(equalToConstant: UIDevice.setSize(iPhone: 100, iPad: 200)).isActive = true
        
        //stackView1 settings
        stackView1.axis = .horizontal
        stackView1.alignment = .fill
        stackView1.distribution = .fill
        stackView1.spacing = UIDevice.setSize(iPhone: 10, iPad: 20)
        
        // Auto layout for image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "flower")
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 1).isActive = true
        stackView1.addArrangedSubview(imageView)
        
        stackView1.addArrangedSubview(stackView11)
        stackView11.translatesAutoresizingMaskIntoConstraints = false
        stackView11.axis = .vertical
        stackView11.alignment = .leading
        stackView11.distribution = .fillEqually
        stackView11.spacing = UIDevice.setSize(iPhone: 10, iPad: 20)
        
         labelFirst = UILabel(text: "First", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22), parentStackView: stackView11)
         labelMiddle = UILabel(text: "Middle", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22), parentStackView: stackView11)
         labelLast = UILabel(text: "Last", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22), parentStackView: stackView11)
        
        stackView11.widthAnchor.constraint(equalToConstant: UIDevice.setSize(iPhone: 70, iPad: 100)).isActive = true
        
        stackView1.addArrangedSubview(stackView12)
        stackView12.translatesAutoresizingMaskIntoConstraints = false
        stackView12.axis = .vertical
        stackView12.alignment = .fill
        stackView12.distribution = .equalSpacing
        stackView12.spacing = 0
        
//        let txtFirst = UITextField()
//        txtFirst.translatesAutoresizingMaskIntoConstraints = false
//        txtFirst.placeholder = "First"
//        txtFirst.font = txtFirst.font?.withSize(UIDevice.setSize(iPhone: 15, iPad: 22))
//        txtFirst.borderStyle = .roundedRect
//        stackView12.addArrangedSubview(txtFirst)
//
//        let txtMiddle = UITextField()
//        txtMiddle.translatesAutoresizingMaskIntoConstraints = false
//        txtMiddle.placeholder = "Middle"
//        txtMiddle.font = txtMiddle.font?.withSize(UIDevice.setSize(iPhone: 15, iPad: 22))
//        txtMiddle.borderStyle = .roundedRect
//        stackView12.addArrangedSubview(txtMiddle)
//
//        let txtLast = UITextField()
//        txtLast.translatesAutoresizingMaskIntoConstraints = false
//        txtLast.placeholder = "Last"
//        txtLast.font = txtLast.font?.withSize(UIDevice.setSize(iPhone: 15, iPad: 22))
//        txtLast.borderStyle = .roundedRect
//        stackView12.addArrangedSubview(txtLast)
        
        txtFirst = UITextField(placeholder: "First", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22),
                                   borderStyle: .roundedRect, parentStackView: stackView12)
        txtMiddle = UITextField(placeholder: "Middle", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22),
                                    borderStyle: .roundedRect, parentStackView: stackView12)
        txtLast = UITextField(placeholder: "Last", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22),
                                  borderStyle: .roundedRect, parentStackView: stackView12)
    }
    
    private func autoLayoutTextViewDescription() {
        mainStackView.addArrangedSubview(txtViewDescription)
        txtViewDescription.translatesAutoresizingMaskIntoConstraints = false
        txtViewDescription.text = "Your description..."
        txtViewDescription.font = txtViewDescription.font?.withSize(UIDevice.setSize(iPhone: 15, iPad: 22))
        txtViewDescription.backgroundColor = UIColor.brown
    }
    
    private func autoLayoutStackView2() {
        mainStackView.addArrangedSubview(stackView2)
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        stackView2.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        stackView2.axis = .horizontal
        stackView2.alignment = .center
        stackView2.distribution = .fillEqually
        stackView2.spacing = 10
        
        let colorBtn = UIColor(red: 121.0 / 255.0, green: 200.0 / 255.0, blue: 166.0 / 255.0, alpha: 1)
        
        stackView2.addArrangedSubview(btnCancel)
        btnCancel.translatesAutoresizingMaskIntoConstraints = false
        btnCancel.backgroundColor = colorBtn
        btnCancel.setTitle("Cancel", for: .normal)


        stackView2.addArrangedSubview(btnSave)
        btnSave.translatesAutoresizingMaskIntoConstraints = false
        btnSave.backgroundColor = colorBtn
        btnSave.setTitle("Cancel", for: .normal)

        stackView2.addArrangedSubview(btnClear)
        btnClear.translatesAutoresizingMaskIntoConstraints = false
        btnClear.backgroundColor = colorBtn
        btnClear.setTitle("Cancel", for: .normal)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("x123")
    }
    
}
