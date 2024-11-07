//
//  SportView.swift
//  Ledger
//
//  Created by Ashwin Raikar on 11/6/24.
//

import SwiftUI

struct SportView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    @State private var id = 1
    @State private var selected = "Golf"
    
    let goldenRatio: CGFloat = 1.618
    let w: CGFloat = 360
    
    var body: some View {
        let h = w / goldenRatio
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 10)
                    .fill(colors.randomElement() ?? .blue).padding()
                    .frame(width: w, height: h)
                    .shadow(radius: 5)
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 64))
                            .foregroundColor(.white)
                        
                    )
                
                Text("\(selected)!")
                    .font(.title)
            }
            .transition(.slide)
            .id(id)
            
            Button("CLICK") {
                withAnimation (.easeInOut(duration: 0.2)){
                        selected = activities.randomElement() ?? "Archery"
                        id += 1
                    }
            }
            .buttonStyle(.borderedProminent)
    }
}

#Preview {
    SportView()
}
