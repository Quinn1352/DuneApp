//
//  ViewController.swift
//  GF9 Dune Companion App
//
//  Created by Quinn Loach on 7/17/23.
//

import UIKit


class ViewController: UIViewController {
    
    private let playButton: UIButton = {
        return makeWhiteButton(string: "Play a Game")
    }()
    
    private let leaderboardButton: UIButton = {
        return makeWhiteButton(string: "Leaderboard")
    }()
    
    let beegPlus: UIButton = {
        return createImageButton(imageString: "plus.circle")
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        
        view.addSubview(playButton)
        view.addSubview(leaderboardButton)
        view.addSubview(beegPlus)
        
        playButton.addTarget(self, action: #selector(didTapPlay), for: .touchUpInside)
        leaderboardButton.addTarget(self, action: #selector(didTapLeaderboard), for: .touchUpInside)
        
    }
    
    @objc func didTapPlay(){
        present(FactionSelectScreen(), animated: true)
    }
    
    @objc func didTapLeaderboard(){
        present(LeaderboardScreen(), animated: false)
    }
        
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        
        playButton.frame = CGRect(
            x: 30,
            y: 300,
            width: view.frame.size.width - 60,
            height: 75)
        
        leaderboardButton.frame = CGRect(
            x: 30,
            y: 400,
            width: view.frame.size.width - 60,
            height: 75
        )
        
        beegPlus.frame = CGRect(
            x: 30,
            y: 500,
            width: view.frame.size.width - 60,
            height: 75)
    }
        

}


