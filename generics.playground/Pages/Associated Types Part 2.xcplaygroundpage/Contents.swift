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


import Foundation

struct Weather {
    let temperature: Double
    let humidity: Double
    let chanceOfRain: Double
    let icon: String
    let highTemperature: Double
    let lowTemperature: Double
    let sunrise: Date
    let sunset: Date
}

let current = Weather(temperature: 63, humidity: 0.36, chanceOfRain: 0.04, icon: "Cloudy", highTemperature: 67, lowTemperature: 50, sunrise: Date(), sunset: Date())

protocol PrettyPrintable {
    var prettyDescription: String { get }
}

extension Weather: PrettyPrintable {
    var prettyDescription: String {
        return "Temperature: \(temperature)\nHumidity: \(humidity)\nChance Of Rain: \(chanceOfRain)"
    }
}

print(current.prettyDescription)









































