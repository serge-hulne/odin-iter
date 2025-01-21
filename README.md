Generic iterator for Odin.

Exemple use:

```
package main

import "core:fmt"
import it "iter"

main :: proc() {


    iter_if :: proc(a: it.iterable(int)) -> bool {
        if a.value >= 9 { return false }
        return true
    }
    
    iter_next :: proc (a : it.iterable(int)) -> it.iterable(int) {
        return it.iterable(int) {a.value + 1, true} 
    }
    
    iter := it.iterable_new(int)
    for iter.next {
        fmt.printfln("%d", iter.value)
        it.iterate(&iter, iter_if, iter_next)
    }

    fmt.printfln("Done! : %d", iter.value)
}

```
