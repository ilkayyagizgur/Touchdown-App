//
//  ContentView.swift
//  Touchdown
//
//  Created by Ada Yagiz Gur on 13.02.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
                .padding()
                .background(.white)
                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 0){
                    FeaturedTabView()
                        .padding(.horizontal, 5)
                        .frame(width: 400, height: 250)
                    
                    CategoryGridView()
                        .padding(.horizontal, 5)
                    
                    TitleView(title: "Helmets")
                        .padding(.horizontal, 5)
                    
                    LazyVGrid(columns: gridLayout, spacing: 15, content: {
                        ForEach(products){product in
                            ProductItemView(product: product)
                        }//: LOOP
                    })//: GRID
                    .padding(.vertical, 15)
                    .padding(.horizontal, 20)
                    
                    TitleView(title: "Brands")
                        .padding(.horizontal, 5)
                    
                    BrandGridView()
                        .padding(.horizontal, 5)
                    
                    FooterView()
                        .padding(.horizontal)
                }//: VSTACK
            })//: SCROLL
        }//: VSTACK
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
