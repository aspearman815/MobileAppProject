//
//  Acheivement.swift
//  MobileAppProject
//
//  Created by Amara Spearman on 11/16/23.
//
import Foundation

// 1. Initialize Achievements
let achievements: [[String: Any]] = [
    ["id": 1, "name": "First Victory", "description": "Win your first battle", "condition": "win_battle"],
    ["id": 2, "name": "Level Up", "description": "Reach level 10", "condition": "reach_level", "target": 10]
    // Add more achievements as needed
]

// 2. Initialize Player Data
var playerData: [String: Any] = [
    "id": 1,
    "name": "Player1",
    "achievementsEarned": [],
    "score": 0,
    "level": 1
    // Add other relevant information
]

// 3. Check Achievement Progress
func checkAchievementProgress(eventType: String, eventData: Any?) {
    for achievement in achievements {
        if let condition = achievement["condition"] as? String, condition == eventType,
            let target = achievement["target"] as? Int, let data = eventData as? Int, data >= target {
            unlockAchievement(achievement: achievement)
        }
    }
}

// 4. Unlock Achievements
func unlockAchievement(achievement: [String: Any]) {
    if !(playerData["achievementsEarned"] as? [[String: Any]] ?? []).contains(achievement) {
        if var achievementsEarned = playerData["achievementsEarned"] as? [[String: Any]] {
            achievementsEarned.append(achievement)
            playerData["achievementsEarned"] = achievementsEarned
            displayNotification(message: "Achievement Unlocked: \(achievement["name"] as? String ?? "")")
            // Update any other relevant player data
        }
    }
}

// 5. Display Achievements
func displayAchievements() {
    print("Achievements:")
    for achievement in achievements {
        if let achievementsEarned = playerData["achievementsEarned"] as? [[String: Any]],
            achievementsEarned.contains(achievement) {
            print("[X] \(achievement["name"] as? String ?? "") - \(achievement["description"] as? String ?? "")")
        } else {
            print("[ ] \(achievement["name"] as? String ?? "") - \(achievement["description"] as? String ?? "")")
        }
    }
}

// 6. Save Player Progress
func savePlayerProgress() {
    // Save playerData to a persistent storage (e.g., database, file)
    // You can use a library or custom code to handle saving/loading player data
}

// Example Usage:
// Simulate a player winning a game
checkAchievementProgress(eventType: "win_game", eventData: nil)

// Simulate a player leveling up
playerData["level"] = 10
checkAchievementProgress(eventType: "reach_level", eventData: playerData["level"])

// Display achievements
displayAchievements()

// Save player progress
savePlayerProgress()
