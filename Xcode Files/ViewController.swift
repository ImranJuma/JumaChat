//
//  ViewController.swift
//  a4
//
//  Created by Imran Juma on 2018-04-09.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit
import Starscream

class ViewController: UIViewController {
    
    
    @IBAction func returnHome(_ sender: Any) {
        // Exit the selected page we are in
        dismiss(animated: true, completion: nil)
        //used for debugging
        print("Exit Selected Page");
    }
    
    
    var socket = WebSocket(url: URL(string: "ws://localhost:3000/")!)

    @IBOutlet weak var messageBox: UITextView!
    
    @IBOutlet weak var msgTextBox: UITextField!
    
    
    @IBAction func disconnectBtn(_ sender: Any) {
        
        // Create the alert for when the user wants to leave the server
        let alert = UIAlertController(title: "Leave Server", message: "Are You Sure You Want To Disconnect?", preferredStyle: UIAlertControllerStyle.alert)
        
        // Two Different Button Options, Confirm the Disconnect, or cancel and stay
        alert.addAction(UIAlertAction(title: "Disconnect", style: UIAlertActionStyle.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        
        // Show The Alert
        self.present(alert, animated: true, completion: nil)
        
        //The User has left the server
        socket.disconnect()
    }
    
    // Here we have our button that will allow us to connect to the server
    @IBAction func connectBtn(_ sender: Any) {
        
        // Informing the user, that they have sucesfully connected to the server
        let alert = UIAlertController(title: "Connection Esablished", message: "You Are Now Connected To The Server", preferredStyle: UIAlertControllerStyle.alert)
        
        // User just hit's okay
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // Make the alert appear
        self.present(alert, animated: true, completion: nil)
        
        // USer connected to the server
        socket.connect()
    }
    
    // Here we have our button that will allow us to disconnect from the server
    @IBAction func sendMessageBtn(_ sender: Any) {
        let text:String = msgTextBox.text!
        sendMessage(text)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // clear message box for first initial
        messageBox.text = "";
        msgTextBox.text = "Receiving: "
        socket.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    deinit {
        socket.disconnect(forceTimeout: 0)
        socket.delegate = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendMessage(_ message: String) {
        socket.write(string: message)
        msgTextBox.text = ""
    }


}

extension ViewController : WebSocketDelegate {
    func websocketDidConnect(socket: WebSocketClient) {
        print("User Has Connected To The Server")
    }
    
    func websocketDidDisconnect(socket: WebSocketClient, error: Error?) {
         print("User Has Disconnected To The Server")
    }
    
    func websocketDidReceiveMessage(socket: WebSocketClient, text: String) {
        print("received messages: ", text)
        messageBox.text = messageBox.text + "\n" + text
    }
    
    func websocketDidReceiveData(socket: WebSocketClient, data: Data) {
        print("Data")
    }
}

