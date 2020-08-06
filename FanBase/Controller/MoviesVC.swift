//
//  ViewController.swift
//  FanBase
//
//  Created by rafiudin on 05/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import UIKit

class MoviesVC: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
   
    @IBOutlet weak var moviesTable : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTable.delegate = self
        moviesTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getMovies().count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MoviesCell{
            let movie = DataService.instance.getMovies()[indexPath.row]
            cell.updateViews(moviesData: movie,sender: self)
            return cell
        }else{
           return MoviesCell()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profilecon = segue.destination as? ProfileVC{
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Actors != nil)
            profilecon.initActor(actor: sender as! Actors)
        }
    }
    
    

    


}

