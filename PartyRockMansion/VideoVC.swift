//
//  VideoVC.swift
//  PartyRockMansion
//
//  Created by Ravi Tiwari on 3/7/17.
//  Copyright © 2017 SelfStudy. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!

    @IBOutlet weak var videoTitleLabel: UILabel!
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get{
            return _partyRock
        }
        set{
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoTitleLabel.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
