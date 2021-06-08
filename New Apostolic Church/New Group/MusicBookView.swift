//
//  MusicBookView.swift
//  New Apostolic Church
//
//  Created by Juvenal Lunguenda on 6/8/21.
//

import SwiftUI

struct MusicBookView: View {

    @State var testMusic2 = """
        O Noivo vem, remidos pensai, na sua promessa! O despertai!
        Esperai com fé e com oração , vigiai irmã, irmão!
        Senhor prontos queremos nós ficar,
        na oração queremos suplicar até que venhas. Nosso querer e face
        a face Te ver

        O Noivo vem quem nisso pensar, nunca sua vista vai transviar.
        Pode erguer o seu olhar , quando Jesusvoltar.

        O Noivo vem pois vós O sabeis, sua promessa já conheceis.
        Vossos sentidos pois despertai, e o noivo encontrai.

        O Noivo vem e quem fiel ficar’, vai com Jesus a glória herdar. Uma coroa do vencedor lhe dá osalvador.
        """
    @State var testMusic = """
    Quão Bondoso amigo em Cristo!
    Revelou-nos seu amor,
    E nos manda que levemos,
    A seus pés a nossa dor.
    Falta ao Coração dorido
    Gozo e paz consolação?
    E porque não confiamos,
    Tudo a ele em oração.

    Andas triste e carregado de pesares e temor?
    A Jesus refúgio eterno, vai com fé teu mal expor.
    Teus amigos te desprezam?
    Conta-lhe isso em oração,
    E por seu amor tão eterno, paz terás no coração.

    Cristo é verdadeiro amigo!
    Disso prova nos mostrou
    Quando para ver remido, ao culpado se encarnou
    Derramou precioso sangue
    Para as manchas nos lavar
    Gozo em vida e no futuro
    Já podemos alcançar.
    """

    @State var search = ""
    @State var searchDescription = "Procurar nº ou Título do Cântico..."

    var body: some View {

        NavigationView{

            VStack {
                CustomSearchBar(searchText: $search, searchDescription: $searchDescription)

                List(){
                    NavigationLink(
                        destination: Text(testMusic2),
                        label: {
                            HStack{

                            Text("O Noivo Vem ")
                                Spacer()
                                Text("5")
                            }
                        })
                    NavigationLink(
                        destination: Text(testMusic),
                        label: {
                            HStack{

                            Text("Quão Bondoso Amigo É Cristo")
                                Spacer()
                                Text("317")
                            }
                        })

                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            HStack{

                            Text("O Noivo Vem ")
                                Spacer()
                                Text("5")
                            }
                        })
                }


                    .navigationBarTitle(Text("Hinário"))
            }
        }

    }
}

struct MusicBookView_Previews: PreviewProvider {
    static var previews: some View {
        MusicBookView()
    }
}
