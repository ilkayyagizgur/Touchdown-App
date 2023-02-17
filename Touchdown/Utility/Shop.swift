//
//  Shop.swift
//  Touchdown
//
//  Created by Ada Yagiz Gur on 17.02.2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
