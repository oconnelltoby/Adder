import CAdder

class Adder {
    let handle = adder_construct();
    
    func add(_ a: Int32, _ b: Int32) -> Int32 {
        return adder_add(handle, a, b);
    }
    
    deinit {
        adder_destruct(handle)
    }
}
