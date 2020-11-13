//
//  ViewController.swift
//  SeriesApi
//
//  Created by Cleís Aurora Pereira on 13/11/20.
//

import UIKit
import Alamofire



class ViewController: UIViewController {

    var arrayShow = [Show]()


    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        loadDataAlamofire()

    }

    func reloadTable(newArray: [Show]){
        self.arrayShow = newArray
        self.tableView.reloadData()
        print (self.arrayShow.count)
    }

    func loadDataAlamofire(){
        AF.request("http://api.tvmaze.com/shows?page=1").responseJSON { response in
            if let arrayDictionary = response.value as? [[String: Any]]{

                var newArray = [Show]()

                for item in arrayDictionary {
                    let show = Show(fromDictionary: item)
                    newArray.append(show)

                }
                self.reloadTable(newArray: newArray)
            }
        }
    }
}



extension ViewController: UITableViewDelegate{

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(arrayShow.count)
        return arrayShow.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowViewCell", for: indexPath) as! ShowViewCell
        cell.setup(showName: arrayShow[indexPath.row])

        return cell
    }


}

