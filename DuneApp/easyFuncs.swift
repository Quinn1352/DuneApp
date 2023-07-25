//
//  easyFuncs.swift
//  DuneApp
//
//  Created by Quinn Loach on 7/23/23.
//

import Foundation
import UIKit

func makeWhiteButton(string: String) -> UIButton{
    let button = UIButton()
    button.backgroundColor = .white
    button.setTitle(string, for: .normal)
    button.setTitleColor(.black, for: .normal)
    return button
}

public func createImageButton(imageString: String) -> UIButton {
    let button = UIButton()
    let Image = UIImage(systemName: "imageString")//UIImage(named: "checkBox.png")
    button.setImage(Image, for: .normal)
    return button
}

func makeLabel(string: String) -> UILabel{
    let text = UILabel()
    text.text = string
    text.textColor = .black
    text.backgroundColor = .systemYellow
    return text
}






func gainCard(faction: Faction, card: TreacheryCard){
    faction.cards.append(card)
    treacheryDrawCount -= 1
    
    if faction.name == "Harkonen"{
        faction.cards.append(unknownCard)
        treacheryDrawCount -= 1
    }
    
    
}

