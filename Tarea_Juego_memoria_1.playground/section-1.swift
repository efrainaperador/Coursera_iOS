// Playground - noun: a place where people can play

import UIKit

for(var i = 0, l = 100; i <= l; i++){
    
    if(i%2 == 0){
        println("\(i)\t Par");
    }
    
    if(i%2 == 1){
        println("\(i)\t Impar");
    }
    
    if(i%5 == 0){
        println("\(i)\t Bingo");
    }
    
    if(i >= 30 && i <= 40){
        println("\(i)\t Viva Swift");
    }
}