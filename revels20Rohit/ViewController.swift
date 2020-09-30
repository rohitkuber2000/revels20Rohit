//
//  ViewController.swift
//  revels20Rohit
//
//  Created by Rohit Kuber on 07/12/19.
//  Copyright © 2019 Rohit Kuber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        evenn()
        fibonaccis(10)
        
        lstring("Rohit", "John is a good boy")
        let names = ["Tushar","Rohit","Naman","Akhilesh"]
         
        strswap(names,2)

    }
    //Function to print even numbers
    func evenn(){
        for i in 1...40{
            if(i%2==0){
            print(i)
        }
    }
    }
//Function to print Fibonacci numbers
    func fibonaccis(_ num :Int){
        var first = 0
        var second  = 1
        var i = 2
        var sum = 0
        print(first)
        print(second)
        while (i<num){
            sum = first + second
            print(sum)
            first = second
            second = sum
            i = i + 1
        }
    }
   
    //Function to print biggest of 2 strings
    func lstring(_ str1: String, _ str2: String){
        let l1 = str1.count
        let l2 = str2.count
        if(l1 >= l2){
            print(str1)
    }
        else{
            print(str2)
    }
    }
    //Function to swap String array elements
    func strswap(_ strarr:[String], _ ind: Int){
     var arr = strarr
        if(ind<strarr.count){
            arr.swapAt(0,ind)
            for word in arr{
                print(word)
            }
        }
        else{
            print("Invalid index")
        }
        
    }
    
    func rem(){
        print("Hacktober Hello")
    }
    


}

