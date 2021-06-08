//
//  CustomView.swift
//  New Apostolic Church
//
//  Created by Juvenal Lunguenda on 6/8/21.
//

import SwiftUI



struct CustomSearchBar: View {

    @Binding var searchText:String
    @Binding var searchDescription:String

    var body: some View {


        HStack(spacing: 15) {

            TextField(searchDescription, text : $searchText)

            Button(action: {

            }, label: {

                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)

            })

        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .background(Color.black.opacity(0.06))
        .clipShape(Capsule())
        .padding(.horizontal)

    }
}


