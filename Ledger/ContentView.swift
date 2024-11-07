//
//  ContentView.swift
//  Ledger
//
//  Created by Ashwin Raikar on 10/2/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            HStack{
                Text("LEGDER")
                    .font(.largeTitle.bold())
                    .padding()
                Spacer()
            }
            CardView()
        }
        
        Spacer()
    }
    
//    init(){
//        for familyName in UIFont.familyNames{
//            print(familyName)
//            for fontName in UIFont.fontNames(forFamilyName: familyName){
//                print("-- \(fontName)")
//            }
//        }
//    }
}

#Preview {
    ContentView()
}
