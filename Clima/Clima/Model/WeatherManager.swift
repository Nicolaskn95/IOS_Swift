
import Foundation
import CoreLocation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager{
    var weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=a6f7c8f6f6655e2e7736e42629ee7ba7&units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(with: urlString)
    }
    
    func fetchWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees){
        let urlString = "\(weatherURL)&lat=\(latitude)&lon=\(longitude)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String){
        // 1 create a URL
        if let url = URL(string: urlString) {
            // 2 create a URL Session -> sera o objeto que irá para a rede
            let session = URLSession(configuration: .default)
            // 3 give a URL Session a task -> atribuir tared a essa sessao de URL, da mesma maneira que colocamos no navegador\
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data{
                    let weather = self.parseJSON(safeData)
                    self.delegate?.didUpdateWeather(self, weather: weather!)
                }
            }
            // 4 Star the task
            task.resume()
        }
    }
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            
            return weather
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}

//api key:a6f7c8f6f6655e2e7736e42629ee7ba7
