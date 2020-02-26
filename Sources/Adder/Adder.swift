import CAdder

func add(_ a: Int32, _ b: Int32) -> Int32 {
    let handle = create_adder();
    defer { free_adder(handle) }
    return add(handle, a, b);
}
