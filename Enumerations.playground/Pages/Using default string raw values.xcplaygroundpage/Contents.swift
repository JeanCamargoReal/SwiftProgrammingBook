enum ProgrammingLanguage: String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp = "c++"
    case python
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")
