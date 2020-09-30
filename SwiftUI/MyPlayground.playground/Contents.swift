import UIKit

let name = [1,2,3,4,5,6,7,8,9]
let reverseName = name.sorted(by: {$1>$0})
print(reverseName)
