//
//  ContentView.swift
//  CW2P2
//
//  Created by aalaa alsharhan on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var num = ""
        // @State var numA = "3.28"
   // let currencyConverter = currencyConverter()
    
    var body: some View {
        
        VStack //(spacing:50){
        {
        
        Text(" محول العملات العجيب!")
                .font(.largeTitle)
            
            .padding()
          
            TextField("Enter the currency in KD" , text: $num) //formatter: NumberFormatter())
                .multilineTextAlignment(.center)
            
            HStack{
                Image("am")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                
                Text("\((Double(num) ?? 0 ) * 3.28 , specifier : "%.2f")")
            }
             
            HStack{
                Image("uk")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text("\((Double(num) ?? 0 ) * 2.46 , specifier : "%.2f")")
            }
            
            HStack{
                Image("eu")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text("\((Double(num) ?? 0 ) * 2.70 , specifier : "%.2f")")
               // FloatingPointSign"%.2f"
             
            }
          
 Spacer()
            Image("cu")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
                //.frame(width: 1000, height: 200 , alignment: .bottom)
                //.clipShape(RoundedRectangle(cornerRadius: 100))
              // .frame(minWidth: 350, minHeight: 130,alignment: .bottom)
               // .clipped()
               // .frame(minWidth: 350,  maxWidth: .infinity, minHeight: 530,  maxHeight: .infinity, alignment: .bottom)
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
