//
//  CharViewController.swift
//  Chat
//
//  Created by Javed Multani on 02/09/2019.
//  Copyright © 2019 Javed Multani. All rights reserved.
//

import UIKit

class CharViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var chatTableView: UITableView!
    var messageArray = ["hello javed","Hello","How are you?","I am fine and you?","I am also fine  tell me problem regarding product","Ya sure","Pass me all details with order number","I bought T.V. price 2450$ and order number is T34248902, I see the T.V. have loud noice like sparking from back speaker. Can you please send technical person who can assist me?","Why nor sure We belive in customer satisfaction so dont worry your problem will be solve definitely","OK thanks","Can you give me your home address so I can schedule the service for it."]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTableView.delegate = self
        chatTableView.dataSource = self
        
        chatTableView.rowHeight = UITableView.automaticDimension
        chatTableView.estimatedRowHeight = 100.0
        
        chatTableView.reloadData()
       

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0{
        var cell : SenderTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "SenderTableViewCell") as? SenderTableViewCell
        if cell == nil {
            tableView.register(UINib.init(nibName: "SenderTableViewCell", bundle: nil), forCellReuseIdentifier: "SenderTableViewCell")
            let arrNib : Array = Bundle.main.loadNibNamed("SenderTableViewCell", owner: self, options: nil)!
            cell = arrNib.first as? SenderTableViewCell
        }
        cell?.messageLabel.text = messageArray[indexPath.row]
        //cell?.showOutgoingMessage(text: messageArray[indexPath.row])
        return cell!
        }else{
            var cell : ReceiverTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "ReceiverTableViewCell") as? ReceiverTableViewCell
            if cell == nil {
                tableView.register(UINib.init(nibName: "ReceiverTableViewCell", bundle: nil), forCellReuseIdentifier: "ReceiverTableViewCell")
                let arrNib : Array = Bundle.main.loadNibNamed("ReceiverTableViewCell", owner: self, options: nil)!
                cell = arrNib.first as? ReceiverTableViewCell
            }
            cell?.messageLabel.text = messageArray[indexPath.row]
            //cell?.showOutgoingMessage(text: messageArray[indexPath.row])
            return cell!
        }
    }

}
