// Individual Player's Dictionaries

var joeSmith: [String: Any] =
[
    "Name": "Joe Smith",
    "Height": 42,
    "Experience": true,
    "Guardians": "Jim and Jan Smith"
]

var jillTanner: [String: Any] =
[
    "Name": "Jill Tanner",
    "Height": 36,
    "Experience": true,
    "Guardians": "Clara Tanner"
]

var billBon: [String: Any] =
[
    "Name": "Bill Bon",
    "Height": 43,
    "Experience": true,
    "Guardians": "Sara and Jenny Bon"
]

var evaGordon: [String: Any] =
[
    "Name": "Eva Gordon",
    "Height": 45,
    "Experience": false,
    "Guardians": "Wendy and Mike Gordon"
]

var mattGill: [String: Any] =
[
    "Name": "Matt Gill",
    "Height": 40,
    "Experience": false,
    "Guardians": "Charles and Sylvia Gill"
]

var kimmyStein: [String: Any] =
[
    "Name": "Kimmy Stein",
    "Height": 41,
    "Experience": false,
    "Guardians": "Bill and Hillary Stein"
]

var sammyAdams: [String: Any] =
[
    "Name": "Sammy Adams",
    "Height": 45,
    "Experience": false,
    "Guardians": "Jeff Adams"
]

var karlSaygan: [String: Any] =
[
    "Name": "Karl Saygan",
    "Height": 42,
    "Experience": true,
    "Guardians": "Heather Bledsoe"
]

var suzaneGreenberg: [String: Any] =
[
    "Name": "Suzane Greenberg",
    "Height": 44,
    "Experience": true,
    "Guardians": "Henrietta Dumas"
]

var salDali: [String: Any] =
[
    "Name": "Sal Dali",
    "Height": 41,
    "Experience": false,
    "Guardians": "Gala Dali"
]

var joeKavalier: [String: Any] =
[    "Name": "Joe Kavalier",
    "Height": 39,
    "Experience": false,
    "Guardians": "Sam and Elaine Kavalier"
]

var benFinkelstein: [String: Any] =
[
    "Name": "Ben Finkelstein",
    "Height": 44,
    "Experience": false,
    "Guardians": "Aaron and Jill Finkelstein"
]

var diegoSoto: [String: Any] =
[
    "Name": "Diego Soto",
    "Height": 41,
    "Experience": true,
    "Guardians": "Robin and Sarika Soto"
]

var chloeAlaska: [String: Any] =
[
    "Name": "Chloe Alaska",
    "Height": 47,
    "Experience": false,
    "Guardians": "David and Jamie Alaska"
]

var arnoldWillis: [String: Any] =
[
    "Name": "Arnold Willis",
    "Height": 43,
    "Experience": false,
    "Guardians": "Claire Willis"
]

var phillipHelm: [String: Any] =
[
    "Name": "Phillip Helm",
    "Height": 44,
    "Experience": true,
    "Guardians": "Thomas Helm and Eva Jones"
]

var lesClay: [String: Any] =
[
    "Name": "Les Clay",
    "Height": 42,
    "Experience": true,
    "Guardians": "Wynonna Brown"
]

var herschelKrustofski: [String: Any] =
[
    "Name": "Herschel Krustofski",
    "Height": 45,
    "Experience": true,
    "Guardians": "Hyman and Rachel Krustofski"
]

// Creating full player array

let players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Separating experienced players and new players into separate arrays using loops

var experiencedPlayers = [Dictionary<String, Any>]()
var newPlayers = [Dictionary<String, Any>]()
for player in players {
    let experience = player["Experience"] as! Bool
    if experience == true {
        experiencedPlayers.append(player)
    }
    else {
        newPlayers.append(player)
    }
}

// Calculate average height of both experienced and new players

var totalHeight: Int = 0
for player in experiencedPlayers {
    let height = player["Height"] as! Int
    totalHeight += height
}
let experiencedAverageHeight = totalHeight / experiencedPlayers.count
print("The average height of experienced players is \(experiencedAverageHeight)")

var newTotalHeight = 0
for newPlayer in newPlayers {
    let height = newPlayer["Height"] as! Int
    newTotalHeight += height
}
let newAverageHeight = newTotalHeight / newPlayers.count
print("The average height of new players is \(newAverageHeight)")

// Establish team arrays

var teamSharks: [Dictionary<String, Any>] = []
var teamDragons: [Dictionary<String, Any>] = []
var teamRaptors: [Dictionary<String, Any>] = []

//Assign players to teams using loops that factor in height and experience,
//this code will also add a key,value pair to the player's dictionary collection 
//to set their team name

var counter = 0
for (var player) in experiencedPlayers {
    counter += 1
    if counter % 3 == 0 {
        for team in 1...3 {
            switch team {
            case 1:
                teamSharks.append(player)
                player["Team"] = "Sharks"
            case 2:
                teamDragons.append(player)
                player["Team"] = "Dragons"
            case 3:
                teamRaptors.append(player)
                player["Team"] = "Raptors"
            default: break
            }
        }
    }
}

counter = 0
for (var player) in newPlayers {
    counter += 1
    if counter % 3 == 0 {
        for team in 1...3 {
            switch team {
            case 1:
                teamSharks.append(player)
                player["Team"] = "Sharks"
            case 2:
                teamDragons.append(player)
                player["Team"] = "Dragons"
            case 3:
                teamRaptors.append(player)
                player["Team"] = "Raptors"
            default: break
            }
        }
    }
}

// Calculate team average heights

var sharksTotalHeight = 0
for player in teamSharks {
    let height = player["Height"] as! Int
    sharksTotalHeight += height
}
let sharksAverageHeight = sharksTotalHeight / teamSharks.count
print("The sharks team average height is \(sharksAverageHeight)")

var dragonsTotalHeight = 0
for player in teamDragons {
    let height = player["Height"] as! Int
    dragonsTotalHeight += height
}
let dragonsAverageHeight = dragonsTotalHeight / teamDragons.count
print("The dragons team average height is \(dragonsAverageHeight)")

var raptorsTotalHeight = 0
for player in teamRaptors {
    let height = player["Height"] as! Int
    raptorsTotalHeight += height
}
let raptorsAverageHeight = raptorsTotalHeight / teamRaptors.count
print("The raptors team average height is \(raptorsAverageHeight)")

// Printing of letters to guardians

func printLetter(player: Dictionary<String, Any>) -> String {
    return "Dear \(player["Guardians"] as! String), "
            //"Your child has been placed with Team \(player["Team"] as! String)" +
}

printLetter(player: joeSmith)










