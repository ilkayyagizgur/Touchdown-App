//
//  QuantityFavouriteCartDetailView.swift
//  Touchdown
//
//  Created by Ada Yagiz Gur on 17.02.2023.
//

import SwiftUI

import SwiftUI

struct QuantityFavouriteCartDetailView: View {
    
    @State private var counter: Int = 0
    @State private var colorChange: Bool = true
    @EnvironmentObject var shop: Shop
    
    func buttonColor() -> Color{
        if counter == 0 {
            return Color(red: shop.selectedProduct?.red ?? sampleProduct.red,green: shop.selectedProduct?.green ?? sampleProduct.green,blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        } else{
            // I have an idea for this part I'll finish it soon.
            return Color(red: shop.selectedProduct?.red ?? sampleProduct.red,green: shop.selectedProduct?.green ?? sampleProduct.green,blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        }
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6, content: {
                Button(action: {
                    if counter > 0 {
                        feedback.impactOccurred()
                        counter -= 1
                    }
                }, label: {
                    Image(systemName: "minus.circle")
                })
                
                Text("\(counter)")
                    .fontWeight(.semibold)
                    .frame(minWidth: 36)
                
                Button(action: {
                    if counter < 100 {
                        feedback.impactOccurred()
                        counter += 1
                        
                    }
                }, label: {
                    Image(systemName: "plus.circle")
                })
                
                Spacer()
                
                Button(action: {
                    feedback.impactOccurred()
                }, label: {
                    Image(systemName: "heart.circle")
                        .foregroundColor(.pink)
                })
                
            })//: HSTACK
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
        .imageScale(.large)
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Spacer()
                Text("Add to cart".uppercased())
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            })//: BUTTON
            .padding(15)
            .background(
                buttonColor()
            )
            .clipShape(Capsule())
        }//: VSTACK
    }
}

struct QuantityFavouriteCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
