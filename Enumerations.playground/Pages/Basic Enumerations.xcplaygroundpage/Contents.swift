enum TextAlignment {
    case left
    case right
    case center
    case justify
}

var alignment = TextAlignment.justify
//alignment = .right

switch alignment {
case .left:
    print("left aligned")

case .right:
    print("right aligned")
    
case .center:
    print("center aligned")

case .justify:
    print("justified")
}
