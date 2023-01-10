

import UIKit


protocol ObjectProtocol {
    var image: UIImage { get set }
    var title: String { get set }
    var description: String { get set }
    var section: Section { get set }
//    var subSection: SubSection { get set }
//    var price: Int { get set }
}


struct Object: ObjectProtocol {
    var image: UIImage
    var title: String
    var description: String
    var section: Section
}
