
import Foundation


struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String{
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.fill"
            
        case 300...321:
            return "cloud.drizzle.fill"
            
        case 500...531:
            return "cloud.bolt.rain.fill"
            
        case 600...622:
            return "thermometer.snowflake"
            
        case 701...710:
            return "cloud.fog"
            
        case 711...720:
            return "smoke"
            
        case 721...730:
            return "sun.haze.fill"
            
        case 731...740:
            return "sun.dust"
                    
        case 800...804:
            return "cloud.fill"
            
        default:
            return "light.beacon.max.fill"
        }
    }
}
