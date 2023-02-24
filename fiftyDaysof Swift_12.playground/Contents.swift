import UIKit
import Foundation

var greeting = "Hello, playground"

protocol AProtocol {
    
    var a: String? {get set}
    
    func aProtocolFunc(_ element1: String, _ element2: String)
}

protocol BProtocol {
    
    var b: String? {get set}
    
    func bProtocolFunc(_ element1: String, _ element2: String)
}

extension AProtocol {
    func aProtocolFunc(_ element1: String, _ element2: String){
        print("asd")
    }
}

class X: AProtocol {
   
    var a: String?
    
}

class A: AProtocol,BProtocol {
   
    var b: String?
    
    func bProtocolFunc(_ element1: String, _ element2: String) {
        <#code#>
    }
    
    
    var a: String?
    
    func aProtocolFunc(_ element1: String, _ element2: String) {
        print("Class A")
    }
}

class B: AProtocol {
    var a: String?
    
    func aProtocolFunc(_ element1: String, _ element2: String) {
        print("Class B")
    }
    
    
}


var objectA = A()
var objectB = B()

var array: [AProtocol] = []

array.append(objectA)
array.append(objectB)

var protocolObject: AProtocol

var testObject: A

protocolObject = objectA
protocolObject = objectB


class RadioCenter {
    
    init() {
        NotificationCenter.default.post(
            name: .init(rawValue: "Eksen FM 96.2"),
            object: nil,
            userInfo: nil
        )
    }
    
}

class Mercedes {
    init() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(play),
            name: .init(rawValue: "Eksen FM 96.2"),
            object: nil
        )
    }
    
    @objc
    private func play(){
        print("playing")
    }
    
}

var gWagon = Mercedes()
var radio = RadioCenter()






