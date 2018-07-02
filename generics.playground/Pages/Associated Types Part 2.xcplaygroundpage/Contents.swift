protocol DataProvider {
    associatedtype Object
    
    func object(atIndex index: Int) -> Object
}

protocol ConfigurableView {
    associatedtype Data
    
    func configure(with data: Data)
}

class ViewController<View: ConfigurableView, DataSource: DataProvider> where View.Data == DataSource.Object {
    let view: View
    let data: DataSource
    
    init(view: View, data: DataSource) {
        self.view = view
        self.data = data
    }
    
    func start() {
        let object = data.object(atIndex: 0)
        view.configure(with: object)
    }
}


// Code snippet from Treehouse
struct StringDataProvider: DataProvider {
    
    let data = ["someValue", "anotherValue"]
    
    func object(atIndex index: Int) -> String {
        return data[index]
    }
}

struct IntView: ConfigurableView {
    
    func configure(with data: Int) {
        //
    }
}

struct StringView: ConfigurableView {
    func configure(with data: String) {
        //
    }
}

let controller = ViewController(view: StringView(), data: StringDataProvider())
















































