import example_1

@main
public struct example_2 {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(example_1().text)
        print(example_1().two)
        print(example_2().text)
    }
}
