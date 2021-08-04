//
//  ViewController.swift
//  Polydev
//
//  Created by Khamitov Darkhan on 8/3/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var allButton: UIButton!
    @IBOutlet weak var favouriteButton: UIButton!
    @IBOutlet weak var trashButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var createNewNoteButton: UIButton!
   
    var notes = [Note(text: "All i need", image: UIImage.init(named: "icons8-book-24")! )]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath) as! NoteCell
        let note = notes[indexPath.row]
        
        cell.noteText.text = note.text
        cell.noteButton.imageView?.image = note.image
        
        return cell
    }
    
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeStyleChange()
        // Do any additional setup after loading the view.
    }
    
    
    func makeStyleChange(){
        makeButtonChanges(button: favouriteButton)
        makeButtonChanges(button: trashButton)
        makeButtonChanges(button: createNewNoteButton)
        makeButtonChanges(button: allButton)
        tableView.separatorStyle = .none
        tableView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        createNewNoteButton.backgroundColor = .blue
    }

    func makeButtonChanges(button: UIButton){
        button.backgroundColor = #colorLiteral(red: 0.6340838105, green: 0.7990394327, blue: 0.9394430052, alpha: 1)
        button.layer.cornerRadius = button.frame.height/4
    }
}

