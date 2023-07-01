import Foundation

protocol CoinManagerDelegate {
    func didUpdatePriceCoin(_ price: String, currency: String)
    func didFailWithError(error: Error)
}


struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "84AD3642-1D1A-4E6F-9A9D-D074D2C631F9"
    var currencyCoin = ""
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    
    var delegate: CoinManagerDelegate?
    
    func fetchPriceCoin(){
        let urlString = "\(baseURL)/\(currencyCoin)?apikey=\(apiKey)"
        performRequest(with: urlString)
    }
    
    mutating func getCoinPrice(for currency: String){
         currencyCoin = currency
    }
        
    func performRequest(with urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    print(error ?? "value nil")
                }
                if let safeData = data {
                    let price = self.parseJSON(safeData)
                    let priceString = String(format: "%.2f", price!)
                    self.delegate?.didUpdatePriceCoin(priceString, currency: currencyCoin)
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ data: Data) -> Double? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CoinData.self, from: data)
            let lastPrice = decodedData.rate
            return lastPrice
            
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
