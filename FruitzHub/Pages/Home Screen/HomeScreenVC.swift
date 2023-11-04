//
//  HomeScreenVC.swift
//  FruitzHub
//
//  Created by Herlangga Wibi on 04/11/23.
//

import UIKit

class HomeScreenVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    let name: String
    
    let viewModel: HomeScreenViewModel
    
    init(name: String, viewModel: HomeScreenViewModel) {
        self.name = name
        self.viewModel = viewModel
        super.init(nibName: "HomeScreenVC", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadProducts()
        setupViews()
        setupTableView()
    }

    private func setupViews() {
        titleLabel.setupLabel(size: 20,
                              fontType: .regular,
                              text: getTitleLabel(),
                              color: .black,
                              aligntment: .left)
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(ProductSectionTVC.registerNib(), forCellReuseIdentifier: ProductSectionTVC.identifier)
    }
    
    private func getTitleLabel() -> String {
        return "Hello \(name), " + Constants.content.whatFruitSaladCombo
    }
    
    private func loadProducts() {
        viewModel.loadProducts()
    }
}

extension HomeScreenVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.homeSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch viewModel.homeSection[indexPath.section] {
        case .recommendedCombo:
            let cell = tableView.dequeueReusableCell(withIdentifier: ProductSectionTVC.identifier, for: indexPath) as! ProductSectionTVC
            cell.setupCell(products: viewModel.recommendedCombo)
            return cell
        case .Hottest:
            let cell = tableView.dequeueReusableCell(withIdentifier: ProductSectionTVC.identifier, for: indexPath) as! ProductSectionTVC
            cell.setupCell(products: viewModel.hottestCombo)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))
        let mainTitle = UILabel.init(frame: CGRect(x: 16, y: 5, width: tableView.frame.width - 16, height: 24))

        mainTitle.setupLabel(size: 24, fontType: .medium, text: section == 0 ? Constants.content.recommendedCombo : Constants.content.hottestCombo, color: .black, aligntment: .left)
        headerView.backgroundColor = UIColor.clear
        headerView.addSubview(mainTitle)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
}
