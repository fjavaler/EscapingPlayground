import Foundation

/// URLs & Paths
// FileURLWithPath: path = file name.
// RelativeTo: Where we are putting this file (in the documents folder).
let remindersDataUrl = URL(fileURLWithPath: "Reminders",
                           relativeTo: FileManager.documentDirectoryURL)

// AppendingPathComponent: allows you to add a file name to a directory
let stringURL = FileManager.documentDirectoryURL
  .appendingPathComponent("String")
  .appendingPathExtension("txt")

stringURL.path


/// Challenge
// Create file name.
let challengeFileName: String = "To-Do List"
let challengeURL: URL = URL(fileURLWithPath: challengeFileName,
                            relativeTo: FileManager.documentDirectoryURL)
  // Append extension
  .appendingPathExtension("txt")

// Quick way to return just the file name and extension.
challengeURL.lastPathComponent
