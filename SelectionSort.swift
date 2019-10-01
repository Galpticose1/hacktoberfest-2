func swapper(array: inout[Int], index: Int, otherIndex: Int){
    let savedarray = array[index]
    array[index] = array[otherIndex]
    array[otherIndex] = savedarray

}
var IntArray = unsortedIntegers
var y = 0
var passes = 0
var totalswaps = 0
print("Pass: \(passes), Swaps: 0/\(totalswaps), Array: \(IntArray)")  
for index in 0 ..< IntArray.count {
  var  x = Int.max
    if passes == IntArray.count-1{
        break}
    else{  
    for i in passes ... IntArray.count-1{
        if IntArray[i] < x{
            x = IntArray[i]
            y = i        
        } // if
    } // for i
    passes += 1
    totalswaps += 1
    swapper(array:&IntArray, index:index, otherIndex:y)
    print("Pass: \(passes), Swaps: 1/\(totalswaps), Array: \(IntArray)")
} // for index


}
