//
//  ViewController.swift
//  mvvmDemo
//
//  Created by vasanth on 22/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var EmployeeTableview: UITableView!
    let parser = Parser()
    var empData = [EmployeeData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("----viewcontroller----")
        EmployeeTableview.dataSource = self
        EmployeeTableview.delegate = self
        
        parser.parse { data in
            print("vc data",data)
            self.empData = data
            print(self.empData)
            DispatchQueue.main.async {
                self.EmployeeTableview.reloadData()
            }
        }
    }


}

extension ViewController : UITableViewDataSource ,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return empData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = EmployeeTableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
         var content = cell.defaultContentConfiguration()
         let data = empData[indexPath.row]
         content.text = data.employeeName
         content.secondaryText = String(data.id)
         cell.contentConfiguration = content
         return cell
    }
    
    
}
