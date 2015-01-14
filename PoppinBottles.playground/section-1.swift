// Playground - noun: a place where people can play

import Cocoa

// Task 1 Build Model

var customerInvestment = 20
let pricePerBottle = 2
var totalBottlesRecycled = 0
var round = 1

let initialBottles = customerInvestment / pricePerBottle
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





