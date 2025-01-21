package iter

iterable :: struct (T : typeid) {
    value : T,
    next : bool,
}

iterable_new :: proc($T : typeid) -> iterable(T) {
   return  iterable(T) {0, true}
}

iterate :: proc( a : ^iterable($T), 
    iter_if : proc(a: iterable(int)) -> bool, 
    iter_next : proc (a : iterable(int)) -> iterable(int), 
    ) { 

    if iter_if(a^) {
        a^ = iter_next(a^)
    } else {
       a^ =  iterable(T) {a.value, false} 
    }
}
