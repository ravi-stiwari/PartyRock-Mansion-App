//
//  MainVC.swift
//  PartyRockMansion
//
//  Created by Ravi Tiwari on 3/7/17.
//  Copyright © 2017 SelfStudy. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var partyRocks = [PartyRock]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://s1-ssl.dmcdn.net/LA33v/1280x720-RNo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/y-pCtglTc8g\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "DO CHAAR DIN Video Song | Karan Kundra,Ruhi Singh | Rahul Vaidya RKV | Latest Hindi Song |T-Series")
        
        let p2 = PartyRock(imageURL: "http://m.img.brothersoft.com/android/56/5624d82fef54228a5cc8cb49a0620679_screeshots_5.jpeg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/T7JQHM5Leao\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "GAL BAN GAYI Video | YOYO Honey Singh Urvashi Rautela Vidyut Jammwal Meet Bros Sukhbir Neha Kakkar")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/WbeYhaJrFyo/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ci9Amo9Oxuo?list=PLpgmmqFv2msh0jYsouBLOQK0tj7UctYT5\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Kabhi Jo Baadal Barse | Jackpot | Romantic Video Song | ft' Sunny Leone, Sachiin Joshi | HD 1080p")
        
        let p4 = PartyRock(imageURL: "http://ndl.mgccw.com/mu3/app/20140524/07/1400895220820/ss/2_small.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SxTYjptEzZs\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Atif Aslam: Pehli Dafa Song (Video) | Ileana D’Cruz | Latest Hindi Song 2017 | T-Series")
        
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/AjM2eSi9C-M/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xroobXt_UBc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Jahaan tum hoo . Shrey singhal . New hindi video song 2017 FULL HD")
        
        let p6 = PartyRock(imageURL: "http://m.img.brothersoft.com/android/cf/cf35d9044d130f43f6485cf0c7a9acb7_screeshots_5.jpeg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OJQvxVExU7Q?list=PLSaPQ7KvDdjBn3D6yMd5-jNnxRAyT9FDo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Hua hai aaj pehli baar | Sanam Re")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        partyRocks.append(p6)
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        }
        else {
            
            return UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC {
            
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }
    
}

