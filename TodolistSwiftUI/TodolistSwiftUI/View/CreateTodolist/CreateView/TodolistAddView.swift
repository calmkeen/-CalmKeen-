//
//  TodolistAddView.swift
//  TodolistSwiftUI
//
//  Created by calmkeen on 2/3/24.
//

import SwiftUI

struct TodolistAddView: View {
    //MARK: - PROPERTIES
    
    @State var inputTitle: String = ""
    
    var body: some View {
        //MARK: - BODY
        
        VStack{
            HStack(spacing: 15) {
                TextField("title", text: $inputTitle)
                Button{} label:
                {
                    Image(systemName: "square")
                }//:Hstack
            }
            .padding([.leading, .trailing], 15)
            
            
        }
        
    }
}

#Preview {
    TodolistAddView()
}
