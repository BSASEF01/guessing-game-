//
//  main.swift
//  guessing game
//
//  Created by Bersabeh Asefa on 1/23/18.
//  Copyright © 2018 Bersabeh Asefa. All rights reserved.
//

import Foundation


//Generate a random number

var randemnumber = Int(arc4random_uniform(100))
var guess: Int?
var tries = 1

//print(randemnumber)
var playAgain = "yes or okay"
while playAgain == "yes or okay" {
print("pleas guess a number.")
guess = Int(readLine()!)
while  guess != randemnumber && tries < 5{
    if randemnumber > guess! {
        print("The number was higher!")
    } else if randemnumber < guess! {
        print("The number was lower")
    }
    print("guess again")
    guess = Int(readLine()!)!
    tries += 1
    
    
    
        
   

    //var  test = Int(readLine()!)
    
    //if guess == nil {
       // print("yes")
    //}
    
    
    if tries >= 5 {
        print("you ran out of tries the number was \(randemnumber) do you want to play again?")
        print (" Do you play again" )
        playAgain = readLine()!
        }
    if randemnumber != guess {
        print("No")
    }
    if randemnumber == guess! {
        print("yes")
    }
    
    }
    tries = 0
}


