import GRDB
import UIKit

/// Dependency Injection based on the "How to Control the World" article:
/// https://www.pointfree.co/blog/posts/21-how-to-control-the-world
struct World {
    var database: () -> DatabaseWriter
    var playerEditionToolbarItems: [UIBarButtonItem] = []
}

var Current = World(
    database: { fatalError("Database is uninitialized") }
)