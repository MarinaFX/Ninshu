//
//  AudioViewModel.swift
//  Ninshu Watch App
//
//  Created by Marina De Pazzi on 04/12/22.
//

import Foundation
import AVFoundation

class AudioViewModel {
    var ninjutsu: AVAudioPlayer?
    
    func release(name jutsu: String) {
        let path = Bundle.main.path(forResource: jutsu, ofType: nil)!
        let url = URL(filePath: path)
        
        do {
            ninjutsu = try AVAudioPlayer(contentsOf: url)
            ninjutsu?.play()
        }
        catch {
            
        }
    }
}
