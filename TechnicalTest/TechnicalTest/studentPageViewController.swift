//
//  studentPageViewController.swift
//  TechnicalTest
//
//  Created by Rakha Aiman Mumtaz on 16/01/24.
//

import UIKit

class studentPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nama.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Student", for: indexPath) as! StudentableViewCell
        cell.configureCell(nama: nama[indexPath.row], alamat: alamat[indexPath.row], image: img[indexPath.row])
        
        return cell
    }
    
    var nama = ["Donnarumma", "Marquinhos", "Skriniar", "Nuno Mendes", "Hakimi", "Ugarte", "Vitinha","Dembélé", "Kolo Muani", "Mbappé"]
    var alamat = ["jalan No1","jalan No2","jalan No3","jalan No4","jalan No5","jalan No6","jalan No7","jalan No8","jalan No9","jalan No10" ]
    
    var img = [UIImage(named: "1"),
               UIImage(named: "2"),
               UIImage(named: "3"),
               UIImage(named: "4"),
               UIImage(named: "5"),
               UIImage(named: "6"),
               UIImage(named: "7"),
               UIImage(named: "8"),
               UIImage(named: "9"),
               UIImage(named: "10")
        
    ]

    
    @IBOutlet weak var studentList: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentList.delegate = self
        studentList.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 100.0
    }

}
