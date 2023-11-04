//
//  WelcomeScreenVC.swift
//  FruitzHub
//
//  Created by Herlangga Wibi on 04/11/23.
//

import UIKit

class WelcomeScreenVC: UIViewController {
    
    @IBOutlet weak var imageContainer: UIView!
    @IBOutlet weak var contentLabelOne: UILabel!
    @IBOutlet weak var contentLabelTwo: UILabel!
    @IBOutlet weak var nextButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    private func setupViews() {
        imageContainer.backgroundColor = Constants.Color.primary
        contentLabelOne.setupLabel(size: 20, fontType: .medium, text: Constants.content.getTheFreshestFruit, color: .black, aligntment: .center)
        contentLabelTwo.setupLabel(size: 16, fontType: .regular, text: Constants.content.weDeliverTheBestAndFreshestFruit, color: .black, aligntment: .center)
        nextButton.setupColourButton(fontSize: 16, fontType: .medium, text: Constants.content.startOrdering, titleColor: .white, selectedColor: .white, backgroundColor: Constants.Color.primary)
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        let vc = AuthenticationVC()
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .currentContext
        self.present(vc, animated: true)
    }
}
