//
//  TodolistSectionView.swift
//  TodolistSwiftUI
//
//  Created by calmkeen on 1/21/24.
//

import SwiftUI

struct TodolistSectionView: View {
    //MARK: - PROPERTIES
    
    @State private var checkboxButton = false
//    var todoModel: TodolistModel
    
    //MARK: - BODY
    var body: some View {
        Spacer()
        
        Toggle(isOn: $checkboxButton) {
            Text("todoModel.title를 달성했습니다!")
        }
        .toggleStyle(iosCheckboxToggleStyle())
        VStack(spacing: 10) {
            Button(action: {
                checkboxButton = !checkboxButton
            }, label: {
                if checkboxButton == false {
                    Image(systemName: "squre")
                    
                        .resizable()
                } else {
                    Image(systemName: "checkmark.square")
                        .resizable()
                }
                })
            }

            }
    }


#Preview {
    TodolistSectionView()
}
