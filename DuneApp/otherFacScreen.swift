//
//  otherFacScreen.swift
//  DuneApp
//
//  Created by Quinn Loach on 7/24/23.
//

import UIKit

class otherFacScreen: UIViewController {
    
    private var facInfo: UILabel
    private let faction: Faction
    init(facInfo: UILabel, faction: Faction){
        self.facInfo = facInfo
        self.faction = faction
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private var facButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private var card1: UILabel = {
        return makeLabel(string: "")
    }()
    private var card2: UILabel = {
        return makeLabel(string: "")
    }()
    private var card3: UILabel = {
        return makeLabel(string: "")
    }()
    private var card4: UILabel = {
        return makeLabel(string: "")
    }()
    private var card5: UILabel = {
        return makeLabel(string: "")
    }()
    private var card6: UILabel = {
        return makeLabel(string: "")
    }()
    private var card7: UILabel = {
        return makeLabel(string: "")
    }()
    private var card8: UILabel = {
        return makeLabel(string: "")
    }()
    
    public var cardsArray: [UILabel] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        facButton.setTitle("\(faction.name)", for: .normal)
        facButton.setTitleColor(faction.color, for: .normal)
        
        view.addSubview(facButton)
        view.addSubview(facInfo)
        
        cardsArray = [card1, card2, card3, card4, card5, card6, card7, card8]
        
        for (i, card) in faction.cards.enumerated(){
            cardsArray[i].text = card.name
            view.addSubview(cardsArray[i])
        }
            

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        facButton.frame = CGRect(
            x: 30,
            y: 140,
            width: view.frame.size.width - 60,
            height: 40
        )
        facInfo.frame = CGRect(
            x: 30,
            y: 200,
            width: view.frame.size.width - 60,
            height: 40
        )
        
        for (i, card) in cardsArray.enumerated(){
            card.frame = CGRect(
                x: 30,
                y: 300 + (30 * i),
                width: 400,
                height: 40)
        }
        
    }
    
}
