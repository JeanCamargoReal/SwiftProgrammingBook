enum TextAlignment: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

var alignment = TextAlignment.justify

TextAlignment.left.rawValue
TextAlignment.right.rawValue
TextAlignment.center.rawValue
TextAlignment.justify.rawValue
alignment.rawValue

// Create a raw value
let myRawValue = 20

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // Conversion succeeded!
    print("successfully created \(myAlignment) from \(myRawValue)")
} else {
    // Conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}
