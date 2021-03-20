import UIKit

//class Product{
//    var name:String
//    var price:Float
//    
//    init(name:String, price:Float){
//        self.name = name
//        self.price = price
//    }
//}
//
//
//
//class OnlineShop{
//
//    private var inventory:[Product] = []
//    var shipping:Ship?
//    func getProduct(index:Int){
//        inventory[index]
//    }
//
//
//    func addProduct(product:Product){
//        inventory.append(product)
//    }
//
//    func sendProduct(product:Product){
//        shipping!.shipProduct(product: product)
//    }
//  
//
//}
//
//var online = OnlineShop()
//
//
//
//class Ship{
//    func shipProduct(product:Product){
//        print("Shipping the product")
//    }
//    
//    func shipMultiple(product:[Product]){
//        print("Multiple shipped")
//
//    }
//}




class Button{
    var listener:ButtonListener?
    
    func tapButton(){
    print("tap Button")
        listener?.onClick()
    }
}

protocol ButtonListener{
    func onClick()
}


class MyButtonListener:ButtonListener{
    func onClick() {
        print("my button")
    }
}
var button = Button()
button.listener = MyButtonListener()
button.tapButton()


