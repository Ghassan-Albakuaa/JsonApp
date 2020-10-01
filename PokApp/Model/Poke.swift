//
//  Poke.swift
//  PokApp
//
//  Created by Ghassan  albakuaa  on 9/30/20.
//

import Foundation
/*

  struct Pokemons {
      let damageRelations: DamageRelations
      let gameIndices: [GameIndex]
      let generation: Generation
      let id: Int
      let moveDamageClass: Generation
      let moves: [Generation]
      let name: String
      let pokemon: [Pokemon]
      }
  }
 
 */
// DamageRelations
struct DamageRelations {
    var double_damage_from: nLink
    }

struct Pokemons {
        let damage_Relations: DamageRelations
        var half_damage_from: [nLink]?
        var half_damage_to: nLink?
        var no_damage_from: NSNull?
        var no_damage_to: nLink?
        var game_indices: [gameIndices]?
        var generation: nLink?
        var id: Int?
        var move_damage_class: nLink?
        var moves: [nLink]?
        var name: String?
        var pokemon: [pokemon]
        
    }

    struct damageFrom{
        var double_damage_From: nLink
        
    }

    struct nLink {
        var name: String?
        var url: String?
    }

    struct gameIndices {
        var game_index: Int?
        var generation: nLink
    }

    struct pokemon {
        var pokemon: nLink
        var slot: Int?
    }
