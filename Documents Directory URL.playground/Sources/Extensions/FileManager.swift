import Foundation

// Extension method.
public extension FileManager {
  
  // Extended computed property
  static var documentDirectoryURL: URL {
    
    // For: What type of URL. In this case, a document directory.
    // In: .userDomainMask tells the file manager that the directory belongs to the user.
    // urls(): Returns an array of URLs, but there is only one DocumentDirectory per iOS app. So, getting the item return at index 0 will return the url for the only DocumentDirectory.
    return `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
  }
}
