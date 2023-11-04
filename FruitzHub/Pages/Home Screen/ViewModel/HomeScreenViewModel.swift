//
//  HomeScreenViewModel.swift
//  FruitzHub
//
//  Created by Herlangga Wibi on 05/11/23.
//

import Foundation

enum HomeSection {
    case recommendedCombo
    case Hottest
}

class HomeScreenViewModel {
    
    var homeSection: [HomeSection] = []
    var recommendedCombo: [Product] = []
    var hottestCombo: [Product] = []
    
    func loadProducts() {
        loadRecommendedProductCombo()
        loadHottestProductCombo()
    }
    
    func loadRecommendedProductCombo() {
        recommendedCombo = [
            Product(image: "r-food-1", title: "Honey lime combo", price: "2,000"),
            Product(image: "r-food-2", title: "Berry mango combo", price: "8,000"),
            Product(image: "r-food-3", title: "Cherry pier combo", price: "9,000"),
            Product(image: "r-food-1", title: "Salad lemon combo", price: "3,000"),
            Product(image: "r-food-2", title: "Fruits mix combo", price: "10,000"),
        ]
        
        homeSection.append(.recommendedCombo)
    }
    
    func loadHottestProductCombo() {
        hottestCombo = [
            Product(image: "h-food-1", title: "Quinoa fruit salad", price: "5,000"),
            Product(image: "h-food-2", title: "Tropical fruit salad", price: "7,000"),
            Product(image: "h-food-3", title: "Melon fruit salad", price: "18,000"),
            Product(image: "h-food-1", title: "Orange mix combo", price: "20,000"),
            Product(image: "h-food-2", title: "Cherry mix combo", price: "21,000"),
        ]
        
        homeSection.append(.Hottest)
    }
}
