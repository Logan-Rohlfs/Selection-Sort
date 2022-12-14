#!/opt/swift-current/swift

var unsortedStrings = [String]()

while let word = readLine() {
    if word == "" {
        break
    } else {
        unsortedStrings.append(word.lowercased())
    }
}




// Add your code below:

func selectionSort(_ strings: [String]) {

    var swap_total = 0
    var swap_current = 0
    var pass = 0
    

    var output = strings                    // Copys the passed arguement into a mutable variable

    for x in 0 ..< output.count - 1 {     // Loops through the array for as many elements are in it

        //print("Pass: \(pass), Swaps: \(swap_current)/\(swap_total), Array: \(output)")
        swap_current = 0
        
        var temp = x                      // Holds the value of the element at the current starting position
        for y in x + 1 ..< output.count {   // Checks down the line to see if any of the other values in the array are lower than the temp
            if output[y] < output[temp] {   // if this is the case then the new value replaces temp
                temp = y
            }
        }

        if x != temp {               // If the temp value differs from the original element at that position, then the values are swapped
            output.swapAt(x, temp)
        }
                swap_total += 1
                swap_current += 1
        pass += 1
    }
        //print("Pass: \(pass), Swaps: \(swap_current)/\(swap_total), Array: \(output)")
}

selectionSort(unsortedStrings)
