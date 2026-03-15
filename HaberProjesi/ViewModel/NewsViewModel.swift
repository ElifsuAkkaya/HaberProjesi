//
//  NewViewModel.swift
//  HaberProjesi
//
//  Created by Elifsu Akkaya on 12.03.2026.
//

import Foundation
import UIKit

struct NewsTableViewModel {
    let newsList: [News]
}

extension NewsTableViewModel {
    func numberOfRowsInSection() -> Int {
        return newsList.count
    }

    func newsAtIndexPath(_ indexPath: IndexPath) -> NewsViewModel {
        let news = newsList[indexPath.row]
        return NewsViewModel(news: news)
    }
}

/*extension String { // eklenti olarak geçiyor
    func test(){
        print("test")
    }
}*/

struct NewsViewModel {
    let news: News

    var title: String {
        return news.title
    }

    var story: String {
        return news.story
    }
}

