// Playground - noun: a place where people can play

import Cocoa

// Task 1 Build Model

func poppinBottles (#enterInvestment: Int) {
    println("INITIAL INVESTMENT: \(enterInvestment)")
    println("")

    let pricePerBottle = 2
    var totalBottlesRecycled = 0
    var round = 1
    
    let initialBottles = enterInvestment / pricePerBottle
    let initialCaps = initialBottles
    
    var bottleSupply = initialBottles
    var capsSupply = initialCaps
    
    while bottleSupply > 1 || capsSupply > 3 {
        println("Round: \(round)")
        println("Bottle Supply: \(bottleSupply)")
        var bottlesRecycled = bottleSupply - (bottleSupply % 2)
        println("Bottles Redeemed: \(bottlesRecycled)")
        totalBottlesRecycled += bottlesRecycled
        bottleSupply -= bottlesRecycled
        println("Caps Supply: \(capsSupply)")
        var capsRecycled = capsSupply - (capsSupply % 4)
        println("Caps Redeemed: \(capsRecycled)")
        capsSupply -= capsRecycled
        
        var newBottles = (bottlesRecycled / 2) + (capsRecycled / 4)
        println("New Bottles: \(newBottles)")
        bottleSupply += newBottles
        capsSupply += newBottles
        round += 1
        println("We now have Bottles: \(bottleSupply) Caps: \(capsSupply)")
        println("")
    }
    
    totalBottlesRecycled
    round = 1
    println("")
    println("")
}

poppinBottles(enterInvestment: 10)

poppinBottles(enterInvestment: 20)



