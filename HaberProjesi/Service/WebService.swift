import Foundation

final class WebService {
    func haberleriIndir(url: URL, completion: @escaping ([News]?) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("WebService error:", error.localizedDescription)
                DispatchQueue.main.async { completion(nil) }
                return
            }

            guard let data = data else {
                DispatchQueue.main.async { completion(nil) }
                return
            }

            do {
                let haberlerDizisi = try JSONDecoder().decode([News].self, from: data)
                DispatchQueue.main.async { completion(haberlerDizisi) }
            } catch {
                print("Decoding error:", error)
                DispatchQueue.main.async { completion(nil) }
            }
        }
        task.resume()
    }
}
