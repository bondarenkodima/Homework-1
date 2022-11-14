//
//  ViewController.swift
//  Homework 1 Bondarenko D
//
//  Created by MacBook Pro on 06.11.2022.
//  Homework 1

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workingWithArray()
        arrayMonth()
        replacementValues()
        createYears()
        comparisonValue()
        searchWord()
        if let message = batteryPercentage(charge: 75) {
            print(message)
        }
    }
    
    // MARK: - 1. Замена отрицательных чисел
    func workingWithArray() {
        var arrayOne = [-21, -13, -7, -5, -1, 2, 6, 9, 77, 99]
        
        for (index, element) in arrayOne.enumerated() {
            if element < 0 {
                arrayOne[index] = 0
            }
        }
        print(arrayOne)
        print("---------------------------------------")
        
        // MARK: - 2. Вывод max и min число
        arrayOne.sort { numLeft, numRight in
            return numLeft < numRight
        }
        print("Минимально число в массиве = \(arrayOne.first ?? 0)")
        print("Максимальное число в массиве = \(arrayOne.last ?? 0)")
        print("---------------------------------------")
        
        // MARK: - 3. Вывод sum
        var sum = 0
        
        for number in arrayOne {
            sum += number
        }
        print("Сумма чисел в массиве = \(sum)")
        print("---------------------------------------")
    }
    
    // MARK: - 4. Массив и словарь
    func arrayMonth() {
        var monthsArray = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        
        var monthsDictionary = [Int: String]()
        
        for (index, element) in monthsArray.enumerated() {
            monthsDictionary[index] = element
        }
        print(monthsDictionary)
        print("---------------------------------------")
    }
    
    // MARK: - 5. Смена значений по ключам
    func replacementValues() {
        var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
        var first = dictionary["first"]
        var fourth = dictionary["fourth"]
        
        dictionary["first"] = fourth
        dictionary["fourth"] = first
        print(dictionary)
        print("---------------------------------------")
    }
    
    // MARK: - 6. Задать год для словаря
    func createYears() {
        var calendar: [Int: [String]] = [:]
        var arrayMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        
        for element in 1970...2022 {
            calendar[element] = arrayMonth
        }
        print(calendar)
        print("---------------------------------------")
        
        // MARK: - 7. Добавление 13-го месяца
        for (key, value) in calendar {
            var newMonth = value
            newMonth.append("xxxxxx")
            calendar[key] = newMonth
        }
        print(calendar)
        print("---------------------------------------")
    }
    
    // MARK: - 9. Сравнение значений
    func comparisonValue() {
        let firstValue = 7
        let secondValue = 13
        let sum = firstValue + secondValue
        
        if firstValue == secondValue {
            //sumResult = sum * 3
            print(sum * 3)
        } else if sum % 2 == 0 {
            print(sum)
        }
        print("---------------------------------------")
    }
    
    // MARK: - 10. Достать слова
    func searchWord() {
        let sentence = "My first home work!"
        let sentence2 = sentence.replacingOccurrences(of: "!", with: "")
        let strArray = sentence2.components(separatedBy:  " ")
        print((strArray.first ?? "") + " " + (strArray.last ?? ""))
        print("---------------------------------------")
    }
    
    // MARK: - 11. Switch возвращение сообщения
    func batteryPercentage(charge: Int) -> String? {
        
        switch charge {
        case 100:
            return "Устройство заряжено"
        case 70...80:
            return "Необходимо зарядить устройство в течении 6 часов"
        case 20...40:
            return "Поставьте устройство на зарядку"
        case 0:
            return "Устройство полностью разряжено"
            
        default:
            return nil
        }
    }
}

