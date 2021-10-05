//
//  ContentView.swift
//  StretchyHeaderSwiftUI
//
//  Created by Trung Dang on 04/10/2021.
//

import SwiftUI
import CoreData

struct CardData {
   let id: Int
   let title: String
}

struct ContentView: View {
    
    let appNames = ["con meo", "con cho", "con meo do", "programming", "CoderX"]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack() {
                GeometryReader{proxy in
                    let global = proxy.frame(in: .global)
                    Image("thumb")
                        .resizable()
                        .offset(y: global.midY > 0 ? -global.midY : 0)
                        .frame(height: global.midY > 0 ?
                               (UIScreen.main.bounds.height/2.5) + global.midY :
                                UIScreen.main.bounds.height/2.5
                        )

                }
                .frame(height: UIScreen.main.bounds.height/2.5)
                
                VStack() {
                    ForEach(1...5, id: \.self) { num in
                        let data = CardData(id: num, title: self.appNames[num - 1])
                        
                        CardView(data: data)
                            .padding()
                    }
                }
            }
        }
    }
}

struct CardView: View {
    let data: CardData
    
    var body: some View {
        HStack {
            Image("\(data.id)")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
            
        
            VStack(alignment: .leading) {
                Text(data.title)
                    .bold()
                    .font(.system(size: 24))
                    .padding(3)
                Text("Offers In-App Purchases")
                    .font(.system(size: 17))
            }
  
            
            Spacer()
            
            Button(action: {}
                   , label: {
                Text("GET")
                    .padding()
                    .foregroundColor(Color.blue)
                    .background(Color(.systemGray6))
                    .cornerRadius(6)
            })
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
