import CAdder

class Adder {
    let adder = adder_construct();
    
    func add(_ a: Int32, _ b: Int32) -> Int32 {
        return adder_add(adder, a, b);
    }
    
    typealias Handler = (Int32) -> ()
    
    func handlerAdd(_ a: Int32, _ b: Int32, handler: @escaping Handler) {
        let context = Unmanaged.passRetained(Box(contents: handler)).toOpaque()
        adder_handler_add(adder, a, b, context) { (context, result) in
            let box = Unmanaged<Box<Handler>>.fromOpaque(context!).takeRetainedValue()
            box.contents(result)
        }
    }
       
    deinit {
        adder_destruct(adder)
    }
}
