//
//  ViewController.swift
//  UISlider TableView
//
//  Created by Sang won Seo on 2018. 5. 14..
//  Copyright © 2018년 Sang won Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 101
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        //재활용
        let tableView = indexPath.row
        cell.textLabel?.text = String(tableView)
        //cell.textLabel?.text = String(Int(mySlider.value) + indexPath.row)
        //title
        return cell
    }
    @IBAction func Slidermoved(_ sender: UISlider) {
        myLabel.text = String(Int(mySlider.value))
        let indexPath = IndexPath(row: Int(myLabel.text!)!, section:0)
        myTableView.scrollToRow(at: indexPath, at: UITableViewScrollPosition.top, animated: true)
        //myTableView.reloadData()
    }
    

}

