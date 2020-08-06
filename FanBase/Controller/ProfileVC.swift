//
//  ProfileVC.swift
//  FanBase
//
//  Created by rafiudin on 06/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var imgActor: UIImageView!
    @IBOutlet weak var nameActor: UILabel!
    
    private var actor : Actors!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgActor.image = UIImage(named: actor.image)
        nameActor.text = actor.name
        navigationItem.title = actor.name
    }
    
    func initActor(actor : Actors) {
        self.actor = actor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
