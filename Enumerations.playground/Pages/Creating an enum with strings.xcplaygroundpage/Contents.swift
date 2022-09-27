enum ProgrammingLanguage: String {
    case swift = "Swift"
    case objectiveC = "objective-c"
    case c = "c"
    case cpp = "c++"
    case python = "python"
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")
