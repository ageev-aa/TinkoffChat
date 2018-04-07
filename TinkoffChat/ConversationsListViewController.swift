//
//  ConversationsListViewController.swift
//  TinkoffChat
//
//  Created by Александр on 11.03.18.
//  Copyright © 2018 TCS. All rights reserved.
//
//collectionView

import UIKit

class ConversationsListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ThemesViewControllerDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBAction func changeThemeAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "themeViewController") as! ThemesViewController
        vc.delegate = self
        navigationController?.pushViewController(vc,animated: true)
    }
    
    var allConversations: [[ConversationModel]] = [ConversationModel.onlineConversations, ConversationModel.historyConversations]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "ConversationCell"
        let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ConversationsTableViewCell
        dequeuedCell.configureCell(configuration: self.allConversations[indexPath.section][indexPath.row])
        return dequeuedCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allConversations[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.allConversations.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Online" : "Offline"
    }
    
    // MARK: - UITableViewDelegate
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
        let storyboard = UIStoryboard(name: "main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "conversationViewController") as! ConversationViewController

        navigationController?.pushViewController(vc,animated: true)
    }
    
    // MARK: - ThemesviewControllerDelegate
    
    func themesViewController(_ controller: ThemesViewController!, didSelectTheme selectedTheme: UIColor!) {
        if let color = selectedTheme{
            self.view.backgroundColor = color
        }
        
    }
    


}
