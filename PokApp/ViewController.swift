//
//  ViewController.swift
//  PokApp
//
//  Created by Ghassan  albakuaa  on 9/30/20.
//

import UIKit

class ViewController: UIViewController {
    var pokemon: Pokemons?
    override func viewDidLoad() {
        super.viewDidLoad()
        print("nbgvjkh0000000gkhgkjh")
        if let poke = NetworkManager.shared.getPokemon() {
          print(poke)
            
        }
        
    }


}

