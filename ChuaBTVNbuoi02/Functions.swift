//
//  Functions.swift
//  ChuaBTVNbuoi02
//
//  Created by Trần Văn Cam on 29/09/2022.
//

import Foundation

//Bài 1: Yêu cầu nhập vào 1 số lớn hơn 10. In ra những số mà số đó chia hết ra màn hình.
func bai1() {
    var number = 0
    repeat {
        print("Nhập vào số lớn hơn 10: ")
        number = Int(readLine()!)!
        
    } while (number <= 10)
    
    // duyệt từ 2 đến số đó chia 2, 1 và chính nó thì bỏ qua để tối ưu
    for i in 2...number/2 {
        if number % i == 0 {
            print("Ước: ", i)
        }
    }
}



//Bài 2: Nhập vào 1 mảng số nguyên. In ra những số trong mảng đó thoả mãn số đó là số chẵn và chia hết cho 5.

func bai2() {
    print("Nhập số phần tử của mảng: ")
    let n = Int(readLine()!)!
    
    var arrayInts: [Int] = []
    for i in 1...n {
        print("Nhập phần tử thứ \(i)")
        let numb = Int(readLine()!)!
        arrayInts.append(numb)
    }
    print(arrayInts)
    
    // Cách 1
    for number in arrayInts { // Duyệt từng phần tử trong mảng không có index
        if number%2==0 && number%5==0 {
            print(number)
        }
    }
    // Cách 2: lấy theo index
    for i in 0..<arrayInts.count-1 {
        print(arrayInts[i])
    }
    // Cách 3: lấy cả index và value
    for (index, value) in arrayInts.enumerated() {
        print("Phần tử tại \(index) là:", value)
    }
    // Cách 4: Dùng closure foreach
    arrayInts.forEach { number in
        print(number)
    }
    
}


//Bài 3: Tính tiền taxi từ số km nhập vào từ bàn phím. Dựa trên thang tính sau
//Bậc 1: 0-10km: 11000
//Bậc 2: 11 - 30km: 10500
//Bậc 3: 31-50km: 9800
//Bậc 4: 50-100km: 9500
//Trên 100km: 9000
