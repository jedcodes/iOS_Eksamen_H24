//
//  Category.swift
//  News_App
//
//  Created by Jack Delamou on 26/11/2024.
//

import SwiftData

@Model
class Category {
    var CategoryTitle: String
    var Articles = [Article]()
    
    
    init(CategoryTitle: String, Articles: [Article] = [Article]()) {
        self.CategoryTitle = CategoryTitle
        self.Articles = Articles
    }
}
