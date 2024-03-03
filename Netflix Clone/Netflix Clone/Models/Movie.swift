
import Foundation
struct Movie:Codable {
    let Search:[MovieItem]
}

struct MovieItem:Codable {
let Title:String
let Year:String?
let imdbID:String?
let `Type`:String?
let Poster:String?
}

