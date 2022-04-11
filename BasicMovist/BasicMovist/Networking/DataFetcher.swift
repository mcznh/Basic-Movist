import Foundation

protocol DataFetcherProtocol {
    func fetchData(from url: URL, completion: @escaping (Result<Data, Error>) -> Void)
}

class DataFetcher: DataFetcherProtocol {
    func fetchData(from url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        URLSession
            .shared
            .dataTask(with: url) { data, _, error in
                // check if there is error
                if let error = error {
                    completion(Result.failure(error))
                    return
                }
                
                // check if there is data
                if let data = data {
                    completion(Result.success(data))
                    return
                }
            }
            .resume()
    }
}
