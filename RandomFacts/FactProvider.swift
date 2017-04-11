//
//  FactProvider.swift
//  RandomFacts
//
//  Created by Sebastian Crossa on 1/8/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

// We are using a struct since we will be storing simple information

import GameKit

struct FactProvider {
    let facts = [
        "An eagle can kill a young deer and fly away with it.",
        "Cherophobia is the fear of fun.",
        "A flock of crows is known as a murder.",
        "Billy goats urinate on their own heads to smell more attractive to females.",
        "Bikinis and tampons invented by men",
        "When hippos are upset, their sweat turns red.",
        "Human saliva has a boiling point three times that of regular water.",
        "In the UK, it is illegal to eat mince pies on Christmas Day!",
        "The average woman uses her height in lipstick every 5 years.",
        "The following can be read forward and backwards: Do geese see God?",
        "In Uganda, 50% of the population is under 15 years of age.",
        "Facebook, Skype and Twitter are all banned in China.",
        "95% of people text things they could never say in person.",
        "The Titanic was the first ship to use the SOS signal.",
        "Bob Dylan’s real name is Robert Zimmerman.",
        "Birds don’t urinate.",
        "The word ‘ejaculation’ comes from the Latin word meaning ‘throwing out’.",
        "The testicles on an octopus are located in its head!",
        "Slugs have 4 noses.",
        "It is illegal to climb trees in Oshawa, a town in Ontario, Canada."
        ]
    
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count) // Method called on a class, but returns an instance of the class
        
        return facts[randomNumber]
    }

    func randomColor() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        
        switch randomNumber {
        case 0:
            return "0x387780"
        case 1, 11:
            return "0xF7B801"
        case 2, 12:
            return "0x228CDB"
        case 3, 13:
            return "0xC19AB7"
        case 4, 14:
            return "0x985F6F"
        case 5, 15:
            return "0x322A26"
        case 6, 16:
            return "0x726E60"
        case 7, 17:
            return "0xEE6C4D"
        case 8, 18:
            return "0x5762D5"
        case 9, 19:
            return "0x26C485"
        case 10:
            return "0x283044"
        default:
            break
        }
        
        return "Error retrieving color"
    }
}







