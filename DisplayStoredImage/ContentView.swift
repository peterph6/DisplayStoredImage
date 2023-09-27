//
//  ContentView.swift
//  DisplayStoredImage
//
//  Created by Peter Phibbs on 7/2/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        Button(action: {
            let defaults = UserDefaults.standard
                 let dictionary = defaults.dictionaryRepresentation()
                 
                 for (key, value) in dictionary {
                     print("\(key) = \(value)")
              }
            
            
            let filePath = UserDefaults.standard.string(forKey: "imagePath")
            let fileURL2 = URL(fileURLWithPath: filePath!)
            
            let image = try! UIImage(data: Data(contentsOf: fileURL2))
            Image(uiImage: image!)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 190, height: 190)
                                    
           }) {
                Image(systemName: "plus")
            
        }
       
        
        
        
    }
}

