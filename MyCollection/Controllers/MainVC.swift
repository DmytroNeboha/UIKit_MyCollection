

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        models.append(Model(text: "Photographs", imageName: "image_1"))
        models.append(Model(text: "Prints", imageName: "image_2"))
        models.append(Model(text: "Contemporary Art", imageName: "image_3"))
        models.append(Model(text: "Impressionist & Modern Art", imageName: "image_4"))
        models.append(Model(text: "Old Master Paintings", imageName: "image_5"))
        models.append(Model(text: "Old Master Drawings", imageName: "image_6"))
        models.append(Model(text: "Ancient Sculpture and Works of Art", imageName: "image_7"))

         
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }
    
    // table
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Fine Art"
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
}

struct Model {
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}
