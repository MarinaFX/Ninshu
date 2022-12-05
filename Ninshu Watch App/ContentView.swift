//
//  ContentView.swift
//  Ninshu Watch App
//
//  Created by Marina De Pazzi on 04/12/22.
//

import SwiftUI

struct ContentView: View {
    private var audioViewModel = AudioViewModel()
    
    @State var ninjutsus: [Jutsus] = [.rasengan, .shinraTensei, .chidori, .hiraishin, .kageBunshin]
    
    var body: some View {
        NavigationView(content: {
            List(self.ninjutsus, id: \.self) { jutsu in
                Button(action: {
                    self.audioViewModel.release(name: jutsu.fileName)
                }, label: {
                    Text(jutsu.name)
                })
            }
            .navigationTitle("Ninjutsu")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Jutsus {
    case rasengan
    case kageBunshin
    case chidori
    case hiraishin
    case shinraTensei
    
    
    var name: String {
        switch self {
            case .rasengan:
                return "Rasengan"
            case .kageBunshin:
                return "Kage Bunshin"
            case .chidori:
                return "Chidori"
            case .hiraishin:
                return "Hiraishin"
            case .shinraTensei:
                return "Shinra Tensei"
        }
    }
    
    var fileName: String {
        switch self {
            case .rasengan:
                return "Rasengan.mp3"
            case .kageBunshin:
                return "Kage Bunshin.mp3"
            case .chidori:
                return "Chidori.mp3"
            case .hiraishin:
                return "Hiraishin.mp3"
            case .shinraTensei:
                return "Shinra Tensei.mp3"
        }
    }
}
