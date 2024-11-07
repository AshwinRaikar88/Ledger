//
//  CardView.swift
//  Ledger
//
//  Created by Ashwin Raikar on 11/6/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2)
                .fill(LinearGradient(
                        gradient: Gradient(colors: [.blue, .purple]),
                        startPoint: .top,
                        endPoint: .bottom)
                )
//                .fill(RadialGradient(
//                        gradient: Gradient(colors: [.yellow, .red]),
//                        center: .center,
//                        startRadius: 5,
//                        endRadius: 100
//                    ))
//                .fill(AngularGradient(
//                       gradient: Gradient(colors: [.green, .blue, .purple]),
//                       center: .center
//                   ))
                
                .padding()
                .frame(width: 400, height: 300)
                .shadow(radius: 20)
            
            Text("Balance")
                .font(.largeTitle.bold())
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 20, y: -80)
                .padding()
            
            ZStack {
                Rectangle()
                .frame( height:60)
                
                Text("10,500")
                    .font(.custom("PricedownBl-Regular", size: 55))
                    .foregroundColor(.green)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .offset(y: -5)
                    .padding()
            }
            .offset(y: 80)
            .padding()
        }
        
        
        
        
    }
}

#Preview {
    CardView()
}
