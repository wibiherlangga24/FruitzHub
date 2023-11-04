//
//  AuthenticationVC.swift
//  FruitzHub
//
//  Created by Herlangga Wibi on 04/11/23.
//

import UIKit

class AuthenticationVC: UIViewController {
    
    @IBOutlet weak var imageContainer: UIView!
    @IBOutlet weak var firstnameLabel: UILabel!
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var startOrderingButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    private func setupViews() {
        setButton(false)
        imageContainer.backgroundColor = Constants.Color.primary
        firstnameLabel.setupLabel(size: 20,
                                  fontType: .medium,
                                  text: Constants.content.whatIsYourFirstname,
                                  color: .black,
                                  aligntment: .center)
        
        startOrderingButton.setupColourButton(fontSize: 16,
                                              fontType: .medium,
                                              text: Constants.content.startOrdering,
                                              titleColor: .white,
                                              selectedColor: .white,
                                              backgroundColor: Constants.Color.primary)
    }
    
    private func setButton(_ value: Bool) {
        startOrderingButton.isEnabled = value
        startOrderingButton.alpha = value ? 1.0 : 0.5
    }
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        setButton(sender.text!.isEmpty ? false : true)
    }
    
    @IBAction func startOrderingButtonTapped(_ sender: UIButton) {
        let vc = HomeScreenVC(name: firstnameTextField.text!,
                              viewModel: HomeScreenViewModel())
        
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .currentContext
        self.present(vc, animated: true)
    }
}
