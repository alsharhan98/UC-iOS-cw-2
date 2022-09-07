//
//  ContentView.swift
//  CW2
//
//  Created by aalaa alsharhan on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    
   // @State var name = ""
    @State var imageN = "qe"
    
    var body: some View {
        VStack{
        Text("ما هو المسار المفضل لديك")
            .padding()
            Image(imageN)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            
         // Text(name)
           
          
               Text("IOS")
                    .frame(width: 200, height: 30)
                    .background(RoundedRectangle(cornerRadius:10).fill(Color.yellow))
                  //  .onTapGesture {
                        
                        // imageN = "app"
                 //   }
            
                    .onTapGesture {
                        if imageN == "qe"
                        {
                            imageN = "app"
                        }
                        else{
                            imageN = "qe"
                        }
                    }
                    .padding()
            
            
                Text("GameDev")
                    .frame(width: 200, height: 30)
                    .background(RoundedRectangle(cornerRadius:10).fill(Color.red))
                    .onTapGesture {
                        if imageN == "qe"
                        {
                            imageN = "unity"
                        }
                        else{
                            imageN = "qe"
                        }
                    }
                
                    .padding()
            
            
                Text("Web")
                    .frame(width: 200, height: 30)
                    .background(RoundedRectangle(cornerRadius:10).fill(Color.blue))
                    .onTapGesture {
                        if imageN == "qe"
                        {
                            imageN = "vis"
                        }
                        else{
                            imageN = "qe"
                        }
                    }
                    .padding()
            
            
                Text("Android")
                    .frame(width: 200, height: 30)
                    .background(RoundedRectangle(cornerRadius:10).fill(Color.green))
                    .onTapGesture {
                        if imageN == "qe"
                        {
                            imageN = "andr"
                        }
                        else{
                            imageN = "qe"
                        }
                    }
                    .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
