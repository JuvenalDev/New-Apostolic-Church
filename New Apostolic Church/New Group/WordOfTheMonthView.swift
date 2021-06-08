//
//  WordOfTheMonthView.swift
//  New Apostolic Church
//
//  Created by Juvenal Lunguenda on 6/2/21.
//

import SwiftUI

struct WordOfTheMonthView: View {

    @State var wordOfMonthTitle = "Seja feita a Tua vontade"
    @State var wordOfMonth = "Quando se fala da vontade de Deus, frequentemente, é num contexto negativo. \n \n Se sofremos uma desgraça: Foi a vontade de Deus. Se uma oração não é ouvida: O que orámos não está de acordo com a vontade de Deus.\n \n No Pai Nosso, a afirmação „Seja feita a Tua vontade“ significa, para muitos, submeter-se à vontade de Deus e, para isso, prescindir de algo. Curvamo-nos perante a vontade de Deus – mas, na verdade, preferíamos que fosse diferente."

    var body: some View {
        NavigationView {
            VStack{

            Image("wOfMonth_top")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()

            Text(wordOfMonthTitle )
                .bold()
                .padding()
                .font(.title)

                Divider()
                    .padding()

                Text(wordOfMonth)
                    .foregroundColor(.black)
                    .bold()
                    .padding(10)
                    .cornerRadius(20, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .padding(10)

            }
            .navigationBarTitle(Text("Palavra do Mês"))

        }
    }
}

struct WordOfTheMonthView_Previews: PreviewProvider {
    static var previews: some View {
        WordOfTheMonthView()
    }
}
