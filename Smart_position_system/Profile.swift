//
//  Profile.swift
//  Smart_position_system
//
//  Created by Holung Cheng on 25/1/2024.
//

import SwiftUI
import FirebaseCore



struct Profile: View {
    var body: some View {
        
        VStack {
            
            Text("Isaacs Lee")
                .font(.system(.headline, weight: .medium))
            Image("man")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipped()
                .mask { RoundedRectangle(cornerRadius: 67, style: .continuous) }
            
            Text("Tab 1 user ")
                .font(.headline)
                .multilineTextAlignment(.center)
            
            Text("Today".uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
                .clipped()
                .font(.system(.subheadline, weight: .medium).width(.expanded))
                .foregroundColor(.pink)
                .lineSpacing(10)
                .padding()
            
            ScrollView{
                VStack(spacing: 5) {
                    ForEach(0..<5) { _ in // Replace with your data model here
                        
                        HStack(spacing: 10) {
                            Image("dog")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70)
                                .clipped()
                                .mask { RoundedRectangle(cornerRadius: 8, style: .continuous) }
                            VStack(alignment: .leading) {
                                Text("Place")
                                    .font(.system(size: 16, weight: .medium, design: .default))
                                Text("date")
                                
                            }
                            .font(.subheadline)
                            Spacer()
                            Text("Total Stay time")
                        }
                        Divider()
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
            }
            .frame(maxWidth: .infinity)
            .clipped()
            .padding(.top, 5)
            .padding(.bottom, -350)
        }
        
        
    }
    
}
    
    
    
    #Preview {
        Profile()
    }
