//
//  TableViewController.swift
//  tableViewHW
//
//  Created by Alisher Tulembekov on 11.03.2024.
//

import UIKit
import SnapKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let characters: [HarryPotterCharacter] = [
        HarryPotterCharacter(name: "Harry", surname: "Potter", house: "Gryffindor", wand: "Holly, 11', phoenix feather core"),
        HarryPotterCharacter(name: "Hermione", surname: "Granger", house: "Gryffindor", wand: "Vine, 10 ¾', dragon heartstring core"),
        HarryPotterCharacter(name: "Ron", surname: "Weasley", house: "Gryffindor", wand: "Willow, 14', unicorn hair core"),
        // Add more characters here
        HarryPotterCharacter(name: "Albus", surname: "Dumbledore", house: "Gryffindor", wand: "Elder, 15', thestral tail hair core"),
        HarryPotterCharacter(name: "Severus", surname: "Snape", house: "Slytherin", wand: "Yew, 13 ½', phoenix feather core"),
        HarryPotterCharacter(name: "Minerva", surname: "McGonagall", house: "Gryffindor", wand: "Fir, 9 ½', dragon heartstring core"),
        HarryPotterCharacter(name: "Draco", surname: "Malfoy", house: "Slytherin", wand: "Hawthorn, 10', unicorn hair core"),
        HarryPotterCharacter(name: "Luna", surname: "Lovegood", house: "Ravenclaw", wand: "Cherry, 14', unicorn hair core"),
        HarryPotterCharacter(name: "Neville", surname: "Longbottom", house: "Gryffindor", wand: "Cherry, 13', unicorn hair core"),
        HarryPotterCharacter(name: "Ginny", surname: "Weasley", house: "Gryffindor", wand: "Yew, 9', phoenix feather core"),
        HarryPotterCharacter(name: "Sirius", surname: "Black", house: "Gryffindor", wand: "Mahogany, 16', unknown core"),
        HarryPotterCharacter(name: "Remus", surname: "Lupin", house: "Gryffindor", wand: "Cypress, 10 ¼', unicorn hair core"),
        HarryPotterCharacter(name: "Bellatrix", surname: "Lestrange", house: "Slytherin", wand: "Walnut, 12 ¾', dragon heartstring core"),
        HarryPotterCharacter(name: "Lucius", surname: "Malfoy", house: "Slytherin", wand: "Elm, 18', dragon heartstring core"),
        HarryPotterCharacter(name: "Rubeus", surname: "Hagrid", house: "Gryffindor", wand: "Oak, 16', unknown core")
    ]
    
    lazy var tableViewHP: UITableView = {
        let table = UITableView()
        table.delegate = self
        table.dataSource = self
        table.register(HgTableViewCell.self, forCellReuseIdentifier: "HgTableViewCell")
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    func setUp() {
        view.addSubview(tableViewHP)
        tableViewHP.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HgTableViewCell", for: indexPath) as? HgTableViewCell else {
            return UITableViewCell()
        }
        cell.nameLabel.text = characters[indexPath.row].name
        cell.surnameLabel.text = characters[indexPath.row].surname
        cell.houseLabel.text = characters[indexPath.row].house
        cell.wandLabel.text = characters[indexPath.row].wand
        if cell.houseLabel.text == "Gryffindor" {
            cell.backgroundColor = UIColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 0.5)
        }
        if cell.houseLabel.text == "Slytherin" {
            cell.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.5)
        }
        if cell.houseLabel.text == "Ravenclaw" {
            cell.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.5)
        }
        if cell.houseLabel.text == "Hufflepuff" {
            cell.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 0.5)
        }
        return cell
    }
    
}
