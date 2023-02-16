//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Ada Yagiz Gur on 14.02.2023.
//

import Foundation

struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
