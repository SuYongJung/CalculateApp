//
//  ViewController.swift
//  CalculateApp
//
//  Created by 정수용 on 6/13/25.
//


/*
 for (index, number) in numArr.enumerated() {
    if number[index] == "0" {
        continue
    }
 }
 */
import UIKit

class ViewController: UIViewController {

    var num: String = "0"
    
    func removeZero() {
        var numArr = Array(num)
        var arrNum = String(numArr)
        
        if numArr[0] == "0" {
            numArr.remove(at: 0)
            arrNum = String(numArr)
            num = arrNum
        }
    }
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func zeroButtonTapped(_ sender: Any) {
        num += "0"
        removeZero()
        label.text = num
    }
    
    @IBAction func oneButtonTapped(_ sender: Any) {
        num += "1"
        removeZero()
        label.text = num
    }
    
    @IBAction func twoButtonTapped(_ sender: Any) {
        num += "2"
        removeZero()
        label.text = num
    }
    
    @IBAction func threeButtonTapped(_ sender: Any) {
        num += "3"
        removeZero()
        label.text = num
    }
    
    
    @IBAction func fourButtonTapped(_ sender: Any) {
        num += "4"
        removeZero()
        label.text = num
    }
    
    
    @IBAction func fiveButtonTapped(_ sender: Any) {
        num += "5"
        removeZero()
        label.text = num
    }
    
    @IBAction func sixButtonTapped(_ sender: Any) {
        num += "6"
        removeZero()
        label.text = num
    }
    
    @IBAction func sevenButtonTapped(_ sender: Any) {
        num += "7"
        removeZero()
        label.text = num
    }
    
    
    @IBAction func eightButtonTapped(_ sender: Any) {
        num += "8"
        removeZero()
        label.text = num
    }
    
    
    @IBAction func nineButtonTapped(_ sender: Any) {
        num += "9"
        removeZero()
        label.text = num
    }
    
    
    @IBAction func euqalButtonTapped(_ sender: Any) {
        func calculate(expression: String) -> Int? {
                let expression = NSExpression(format: expression)
            if let result = expression.expressionValue(with: nil, context: nil) as? Int {
                return result
            } else {
                return nil
            }
        }
        
        var resultNum = calculate(expression: num)
        guard let resultNum else {
            return
        }
        label.text = String(resultNum)
        num = "0"
        
    }
    
    @IBAction func divideButtonTapped(_ sender: Any) {
        num += "/"
        removeZero()
        label.text = num
    }
    
    @IBAction func multipleButtonTapped(_ sender: Any) {
        num += "*"
        removeZero()
        label.text = num
    }
    
    @IBAction func minusButtonTapped(_ sender: Any) {
        num += "-"
        removeZero()
        label.text = num
    }
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        num += "+"
        removeZero()
        label.text = num
    }
    
    
    @IBAction func acButtonTapped(_ sender: Any) {
        num = "0"
        label.text = num
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//테스트용 주석
