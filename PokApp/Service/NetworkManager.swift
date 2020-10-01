//
//  NetworkManager.swift
//  PokApp
//
//  Created by Ghassan  albakuaa  on 9/30/20.
//

import Foundation
final class NetworkManager {
    
    static let shared: NetworkManager = NetworkManager()
    
    private init() { }
}

extension NetworkManager {
    
    func getPokemon() -> Pokemons? {
        guard let path = Bundle.main.path(forResource: "SampleJSONGlaceon", ofType: "json") else { return nil }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonObj = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            guard let baseDict = jsonObj as? [String: Any] else { return nil }
            return self.parsePokemon(base: baseDict)
        } catch {
            print(error.localizedDescription)
        }
                
        return nil
    }
   
        private func parsePokemon(base: [String: Any]) -> Pokemons? {
            
            
            //  damage_relations
            guard let damageRelations = base["damage_relations"] as? [String: Any] else { return nil }
              
            // damage from
            let doubleDamageFrom = damageRelations["double_damage_from"]
                var DamageFrom : [damageFrom] = []
                DamageFrom.append((doubleDamageFrom) as! damageFrom)
                let doubleDamageTo = damageRelations["double_damage_to"]
                var doDamageTo : [nLink] = []
                doDamageTo.append((doubleDamageTo as! nLink))
                let halfDamageFrom = damageRelations["half_damage_from"]
                var hfDamageFrom : [nLink] = []
                hfDamageFrom.append(halfDamageFrom as! nLink)
                let halfDamageTo = damageRelations["half_damage_to"]
                var hfDamageTo = [nLink]()
                hfDamageTo.append(halfDamageTo as! nLink)
                let noDamageFrom = damageRelations["no_damage_from"]
                var nDamageFrom = [NSNull] ()
                nDamageFrom.append(noDamageFrom as! NSNull)
                let noDamageTo = damageRelations["no_damage_to"]
                var nDamageTo = [nLink] ()
                nDamageTo.append(noDamageTo as! nLink)
                guard let gameIndices = base["game_indices"]  else {
                    return nil
                }
                var gIndices: [gameIndices] = []
                gIndices.append(gameIndices as! gameIndices)
                guard let generation = base["generation"] else {
                    return nil
                }
                var ggeneration = [nLink]()
                ggeneration.append(generation as! nLink)
                guard let id = base["id"]  else {return nil}
                var idArray = [Int] ()
                idArray.append(id as! Int)
                guard let moveDamageClass = base["move_damage_class"] else {return nil}
                var mDamageClass = [nLink]()
                mDamageClass.append(moveDamageClass as! nLink)
                
               
                
       //     return Pokemons(damage_Relations: DamageRelations, half_damage_from: [nLink], game_indices: [gameIndices], moves: [nLink], pokemon: [pokemon])
        }
            

        }
