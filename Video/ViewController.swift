//
//  ViewController.swift
//  Video
//
//  Created by humberto Lima on 07/11/19.
//  Copyright © 2019 humberto Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tabelaVideos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelaVideos.delegate = self
        tabelaVideos.dataSource = self
        tabelaVideos.register(UINib(nibName: "VideoTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelaVideos.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VideoTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 320
    }
}


//cell.urlUsar = "http://154.127.52.231:82/crosoften-cotidiano%20(1).mp4"
//cell.carregaVideo()
