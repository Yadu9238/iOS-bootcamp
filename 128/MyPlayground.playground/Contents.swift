import UIKit

class Shape{
    var xPos:Int = 0
    var yPos:Int = 0
    var BGColor:String = "white"
    
    func draw(){
        print("Shape:Draw()")
    }
    
}
class Rectangle:Shape{
    var width:Int = 0
    var height:Int = 0
    
    override func draw() {
        print("Rectangle:draw()")
    }
}

class Circle:Shape{
    var radius:Int = 0
    override func draw() {
        print("Circle:draw()")
    }
    
}

class placeHolder:Shape{
    var width:Int = 0
    var height:Int = 0
}
func drawShapes(shapes:[Shape]){
    for shape in shapes{
        shape.draw()
    }
}

let shapes = [Rectangle(),Circle(),placeHolder(),Rectangle()]
drawShapes(shapes: shapes)

class Shape2{
    var xPos:Int = 0
    var yPos:Int = 0
    var BGColor:String = "white"
    
    
}

protocol Drawable{
    
    func draw()
}

class Rectangle2:Shape2,Drawable{
    var width:Int = 0
    var height:Int = 0
    
    func draw() {
        print("Rectangle:draw()")
    }
}

class Circle2:Shape2,Drawable{
    var radius:Int = 0
    func draw() {
        print("Circle:draw()")
    }
    
}


func drawShapes(shapes:[Drawable]){
    for shape in shapes{
        shape.draw()
    }
}

let shapes3:[Drawable] = [Rectangle2(),Circle2(),Rectangle2()]
drawShapes(shapes: shapes)


class Bird{
    var color:String = "Black"
    func fly(){
        print("Fly")
    }
    func layAnEgg(){
        print("lay an egg")
    }
}

      
