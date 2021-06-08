//
//  HomeView.swift
//  New Apostolic Church
//
//  Created by Juvenal Carlos Lunguenda on 6/2/21.
//

import SwiftUI

struct HomeView: View {

    @State var search = ""
    @State var searchDescription = "Procurar Comunidades..."
    @State var activePressedColor = false
    @State var selectedMenu:String? = ""

    var body: some View {
        NavigationView {
            VStack{
                VStack {

                 CustomSearchBar(searchText: $search, searchDescription: $searchDescription)

                    Image("inaLogo")
                        .resizable()
                        .scaledToFit()
                        .padding(.leading, 60)
                        .padding(.trailing,60)
                        .padding()

                }
                Divider()
                    .background(Color.blue)
                    .padding()
                    .shadow(radius: 100)

                //MARK: - Custom Menu
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {

                    NavigationLink(
                        destination: WordOfTheMonthView(),
                        tag: "wOfMonth",
                        selection: self.$selectedMenu)
                    {

                        VStack{
                            Text("Palavra do Mês ")
                                .bold()
                                .padding(.bottom, 5)
                            Image(systemName: "book")

                        }
                        .foregroundColor(selectedMenu == "wOfMonth" ?  Color.black : Color.white)
                    }
                    .background(selectedMenu == "wOfMonth" ?  Color.white : Color.black)
                    .cornerRadius(10)

                    NavigationLink(
                        destination: MusicBookView() ,
                        tag: "musicBook",
                        selection: self.$selectedMenu)
                    {
                        VStack{
                            Text("Hinário ")
                                .bold()
                                .padding(.bottom, 5)
                            Image(systemName: "music.quarternote.3")
                        }
                        .foregroundColor(selectedMenu == "musicBook" ?  Color.black : Color.white)

                    }
                    .background(selectedMenu == "musicBook" ?  Color.white : Color.black)
                    .cornerRadius(10)

                    NavigationLink(
                        destination: Text("Comunicados"),
                        tag: "announcements",
                        selection: self.$selectedMenu)
                    {
                        VStack{
                            Text("Comunicados")
                                .bold()
                                .padding(.bottom, 5)
                            Image(systemName: "paperplane")
                        }
                        .foregroundColor(selectedMenu == "announcements" ?  Color.black : Color.white)

                    }
                    .background(selectedMenu == "announcements" ?  Color.white : Color.black)
                    .cornerRadius(10)

                }
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(20, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)

            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
