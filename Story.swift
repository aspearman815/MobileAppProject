//
//  Story.swift
//  AdventureStory
//
//  
//

import Foundation

struct Story {
    let storyText: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    let storyImage: String
    let endOfStory: Bool
    let achievement: String?

    init(storyText: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int, storyImage: String, endOfStory: Bool, achievement: String? = nil) {
        self.storyText = storyText
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
        self.storyImage = storyImage
        self.endOfStory = endOfStory
        self.achievement = achievement
    }
}

var stories = [
    //Page 0
    Story(storyText: "A dilapidated mansion stands shrouded in mist. The moon casts an eerie glow on the imposing structure. A chilling wind whispers through the overgrown garden. You find yourself at the mansion's entrance. The front door groans open, revealing a foreboding darkness within. Faint whispers echo through the air.",
          choice1: "Enter the mansion.",
          choice1Destination: 1,
          choice2: "Consider turning back.",
          choice2Destination: 2,
          storyImage: "rusty-key",
          endOfStory: false),
    //Page 1
        Story(storyText: "Inside, a grand foyer covered in dust. A flickering candle illuminates a portrait with eyes that seem to follow your every move. An unsettling silence prevails.",
              choice1: "Inspect the portrait.",
              choice1Destination: 3,
              choice2: "",
              choice2Destination: 4,
              storyImage: "forest-door",
              endOfStory: false),

    //Page 2
        Story(storyText: "As you venture deeper, the hallway twists and turns unnaturally. Ghostly apparitions materialize, and the walls seem to close in. Whispers grow more insistent.",
              choice1: "Confront the apparitions.",
              choice1Destination: 5,
              choice2: "Navigate through the shifting halls.",
              choice2Destination: 6,
              storyImage: "forest-strange-sounds",
              endOfStory: false),
    //Page 3
        Story(storyText: "You follow the noise down to the basement. There, you find a treasure chest filled with gold and jewels! You also find a secret passage that leads to a beautiful garden. You have discovered a hidden gem. Congratulations!",
              choice1: "",
              choice1Destination: 0,
              choice2: "",
              choice2Destination: 0,
              storyImage: "gem",
              endOfStory: true),
    //Page 4
        Story(storyText: "You leave the mansion and continue exploring the forest. As you wander deeper into the woods, you realize you are lost. You hear strange noises all around you. Suddenly, you come face-to-face with a wild bear! You should have explored the mansion instead.",
              choice1: "",
              choice1Destination: 0,
              choice2: "",
              choice2Destination: 0,
              storyImage: "wildbear",
              endOfStory: true),
    //Page 5
        Story(storyText: "You try to find your way back to where you started, but you only get more lost. You hear strange noises all around you. Suddenly, you come face-to-face with a wild bear! You should have explored the mansion instead.",
              choice1: "",
              choice1Destination: 0,
              choice2: "",
              choice2Destination: 0,
              storyImage: "wildbear",
              endOfStory: true),
    //Page 6
        Story(storyText: "You keep wandering deeper into the forest. You hear strange noises all around you. Suddenly, you come face-to-face with a wild bear! You should have explored the mansion instead.",
              choice1: "",
              choice1Destination: 0,
              choice2: "",
              choice2Destination: 0,
              storyImage: "wildbear",
              endOfStory: true),
    
    
    Story(storyText: "You find an ancient library filled with dusty tomes and mysterious scrolls. A wise old librarian offers to teach you ancient knowledge. Will you accept the offer?",
             choice1: "Accept the offer.",
             choice1Destination: 8,
             choice2: "Decline and continue exploring.",
             choice2Destination: 9,
             storyImage: "library",
             endOfStory: false,
             achievement: nil),

       // Page 8 (new)
       Story(storyText: "The librarian imparts ancient wisdom, unlocking your mind to powerful insights. You gain the title of 'Sage of the Ancients.'",
             choice1: "",
             choice1Destination: 0,
             choice2: "",
             choice2Destination: 0,
             storyImage: "sage",
             endOfStory: false,
             achievement: "Sage of the Ancients"),

       // Page 9 (new)
       Story(storyText: "You decide to explore further and stumble upon a hidden cavern. Inside, you encounter a mystical creature guarding a treasure. Will you attempt to take the treasure?",
             choice1: "Attempt to take the treasure.",
             choice1Destination: 10,
             choice2: "Leave the cavern peacefully.",
             choice2Destination: 0,
             storyImage: "cavern",
             endOfStory: false,
             achievement: nil),

       // Page 10 (new)
       Story(storyText: "The mystical creature challenges you to a test of wits. You successfully solve the riddles and earn the creature's respect. It gifts you a rare artifact before disappearing into the shadows.",
             choice1: "",
             choice1Destination: 0,
             choice2: "",
             choice2Destination: 0,
             storyImage: "artifact",
             endOfStory: true,
             achievement: "Riddler's Delight"),

       // Add more scenes and achievements as needed...
   ]
