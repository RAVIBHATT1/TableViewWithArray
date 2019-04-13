//
//  ViewController.swift
//  TableViewWithArray
//
//  Created by Akash Padhiyar on 09/04/19.
//  Copyright © 2019 Akash Padhiyar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "MyCell")as! MyTableViewCell
        cell.MyLabel.text = array[indexPath.row]
        cell.MyImageView.image = UIImage(named: arryimg[indexPath.row])
        
        
        return cell
        
    }
    
    @IBOutlet weak var MyTableView: UITableView!
    
    var array = ["Ios","Swift","Php","Laravel","Asp.Net","c++"]
    var arryimg = ["IOSImage.jpg","swift.jpg","php.png","Laravel.png","Asp.jpg","C.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyTableView.delegate = self
        MyTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
   

}

