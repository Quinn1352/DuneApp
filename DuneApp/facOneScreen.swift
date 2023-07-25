//
//  facOneScreen.swift
//  DuneApp
//
//  Created by Quinn Loach on 7/23/23.
//

import UIKit



class facOneScreen: UIViewController {
    private var facInfo: UILabel
    init(facInfo: UILabel){
        self.facInfo = facInfo
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private let Atreides: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Atreides", for: .normal)
        button.setTitleColor(.green, for: .normal)
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
    
    
    var cardsArray: [UILabel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        cardsArray = [card1, card2, card3, card4]
        
        for (i, card) in atreidesFaction.cards.enumerated(){
            cardsArray[i].text = card.name
            view.addSubview(cardsArray[i])
        }
                
        view.addSubview(Atreides)
        view.addSubview(facInfo)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        Atreides.frame = CGRect(
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
                y: 300 + (60 * i),
                width: 600,
                height: 40)
        }
        
    }
    

    

}
