//
//  Destionation.swift
//  TravelApp
//
//  Created by Omid Shojaeian Zanjani on 07/06/23.
//

import Foundation


struct Destination: Identifiable {
    var id = UUID().uuidString
    var name: String = ""
    var imageString: String = ""
}

extension Destination {
    static var sampleData: [Destination] {
        [
            Destination(name: "Taj Mahal", imageString: "https://openclipart.org/image/800px/220320"),
            Destination(name: "New York", imageString: "https://openclipart.org/image/800px/226824"),
            Destination(name: "Rome", imageString: "https://openclipart.org/image/800px/222548"),
            Destination(name: "Japan", imageString: "https://openclipart.org/image/800px/222546"),
            Destination(name: "Sydney", imageString: "https://openclipart.org/image/800px/254600"),
            Destination(name: "Egypt", imageString: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg"),
            Destination(name: "SF", imageString: "https://a.cdn-hotels.com/gdcs/production43/d419/4563a5ba-2f0a-492c-b2a1-99e36be9887a.jpg?impolicy=fcrop&w=1600&h=1066&q=medium"),
            Destination(name: "Chicago", imageString: "https://sbadamsthetower.com/wp-content/uploads/2019/02/20170928a.jpg"),
            Destination(name: "Hawaii", imageString: "https://cdn.aarp.net/content/dam/aarp/travel/Domestic/2021/12/1140-oahu-hero.imgcache.rev.web.1140.655.jpg"),
            Destination(name: "Bora bora", imageString: "https://www.planetware.com/wpimages/2021/05/french-polynesia-bora-bora-best-resorts-the-st-regis-bora-bora.jpg"),
            Destination(name: "Tokyo", imageString: "https://res.cloudinary.com/duu3v9gfg/image/fetch/t_fit_1920/https://78884ca60822a34fb0e6-082b8fd5551e97bc65e327988b444396.ssl.cf3.rackcdn.com/up/2019/08/Mount-Fuji-1565615301-1565615301.jpg"),
            Destination(name: "Cancun", imageString: "https://www.royalresorts.com/img/pages/destinations/cancun/800/cancun-banner.jpg")
        ]
    }
}
