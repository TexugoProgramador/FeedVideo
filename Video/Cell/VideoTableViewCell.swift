//
//  VideoTableViewCell.swift
//  Video
//
//  Created by humberto Lima on 07/11/19.
//  Copyright © 2019 humberto Lima. All rights reserved.
//

import UIKit
import AVKit
import Foundation

class VideoTableViewCell: UITableViewCell {
    
    var player: AVPlayer!
    var avpController = AVPlayerViewController()
    @IBOutlet var viewVideo: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let url = URL(string: "http://154.127.52.231:82/crosoften-cotidiano%20(1).mp4")
        self.player = AVPlayer(url: url!)
        self.avpController = AVPlayerViewController()
        self.avpController.player = self.player
        avpController.view.frame = viewVideo.frame
        
        self.addSubview(avpController.view)
        
        //self.addChildViewController(avpController)
        //self.view.addSubview(avpController.view)
        
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
}


//    func carregaVideo() {
//        let link = URL(string: urlUsar)!
//        let request = URLRequest(url: link)
//        wevView.load(request)
//        wevView.frame = CGRect(x: 0, y: 0, width: 375, height: 300)
///        wevView.stopLoading()
///        let stringUsar = "var videos = document.querySelectorAll(\"video\"); for (var i = videos.length - 1; i >= 0; i--) { videos[i].pause(); }"
////        wevView.evaluateJavaScript(stringUsar, completionHandler: nil)
////        wevView.configuration.allowsInlineMediaPlayback = false
////        wevView.configuration.mediaTypesRequiringUserActionForPlayback = [WKAudiovisualMediaTypes.video]
//    }
//    
//    func paraCarregar() {
//        wevView.stopLoading()
//    }
//    
