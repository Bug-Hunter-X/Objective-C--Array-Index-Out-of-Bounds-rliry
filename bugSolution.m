The solution involves checking the array's bounds before accessing elements to prevent the out-of-bounds exception.  If the index is out of bounds, appropriate handling (e.g., returning a default value, logging an error, or using a different error handling strategy) should be implemented.

```objectivec
NSArray *myArray = @[@1, @2, @3];
NSInteger index = 4;
NSInteger value;

if (index >= 0 && index < myArray.count) {
    value = [myArray objectAtIndex:index];
    NSLog("Value at index %ld: %ld", (long)index, (long)value);
} else {
    NSLog("Index %ld is out of bounds. Array count: %lu", (long)index, (unsigned long)myArray.count);
    value = -1; // Or handle the error appropriately
}
```