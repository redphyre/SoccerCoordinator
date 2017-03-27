// Individual Players Dictionaries

let joeSmith: [String: Any] =
[
    "Name": "Joe Smith",
    "Height": 42,
    "Experience": true,
    "Guardians": "Jim and Jan Smith"
]

let jillTanner: [String: Any] =
[
    "Name": "Jill Tanner",
    "Height": 36,
    "Experience": true,
    "Guardians": "Clara Tanner"
]

let billBon: [String: Any] =
[
    "Name": "Bill Bon",
    "Height": 43,
    "Experience": true,
    "Guardians": "Sara and Jenny Bon"
]

let evaGordon: [String: Any] =
[
    "Name": "Eva Gordon",
    "Height": 45,
    "Experience": false,
    "Guardians": "Wendy and Mike Gordon"
]

let mattGill: [String: Any] =
[
    "Name": "Matt Gill",
    "Height": 40,
    "Experience": false,
    "Guardians": "Charles and Sylvia Gill"
]

let kimmyStein: [String: Any] =
[
    "Name": "Kimmy Stein",
    "Height": 41,
    "Experience": false,
    "Guardians": "Bill and Hillary Stein"
]

let sammyAdams: [String: Any] =
[
    "Name": "Sammy Adams",
    "Height": 45,
    "Experience": false,
    "Guardians": "Jeff Adams"
]

let karlSaygan: [String: Any] =
[
    "Name": "Karl Saygan",
    "Height": 42,
    "Experience": true,
    "Guardians": "Heather Bledsoe"
]

let suzaneGreenberg: [String: Any] =
[
    "Name": "Suzane Greenberg",
    "Height": 44,
    "Experience": true,
    "Guardians": "Henrietta Dumas"
]

let salDali: [String: Any] =
[
    "Name": "Sal Dali",
    "Height": 41,
    "Experience": false,
    "Guardians": "Gala Dali"
]

let joeKavalier: [String: Any] =
[
    "Name": "Joe Kavalier",
    "Height": 39,
    "Experience": false,
    "Guardians": "Sam and Elaine Kavalier"
]

let benFinkelstein: [String: Any] =
[
    "Name": "Ben Finkelstein",
    "Height": 44,
    "Experience": false,
    "Guardians": "Aaron and Jill Finkelstein"
]

let diegoSoto: [String: Any] =
[
    "Name": "Diego Soto",
    "Height": 41,
    "Experience": true,
    "Guardians": "Robin and Sarika Soto"
]

let chloeAlaska: [String: Any] =
[
    "Name": "Chloe Alaska",
    "Height": 47,
    "Experience": false,
    "Guardians": "David and Jamie Alaska"
]

let arnoldWillis: [String: Any] =
[
    "Name": "Arnold Willis",
    "height": 43,
    "Experience": false,
    "Guardians": "Claire Willis"
]

let phillipHelm: [String: Any] =
[
    "Name": "Phillip Helm",
    "Height": 44,
    "Experience": true,
    "Guardians": "Thomas Helm and Eva Jones"
]

let lesClay: [String: Any] =
[
    "Name": "Les Clay",
    "Height": 42,
    "Experience": true,
    "Guardians": "Wynonna Brown"
]

let herschelKrustofski: [String: Any] =
[
    "Name": "Herschel Krustofski",
    "Height": 45,
    "Experience": true,
    "Guardians": "Hyman and Rachel Krustofski"
]

// Creating full player array

let allPlayers = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Separating experienced players and non-experienced into separate arrays using loops
var experiencedPlayers = [Dictionary<String, Any>]()
for player in allPlayers {
    let experience = player["Experience"] as! Bool
    if experience == true {
        experiencedPlayers.append(player)
    }
}