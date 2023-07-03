import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages: [Message] = [
        Message(sender: "nicolasjap@hotmail.com", body: "Hey!"),
        Message(sender: "nicolasjap@hotmail.com", body: "Hello!"),
        Message(sender: "nicolasjap@hotmail.com", body: "What`s Up?")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = K.appName
        navigationItem.hidesBackButton = true

    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        do {
          try Auth.auth().signOut()
            
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        cell.textLabel?.text = "Thjis is a cell"
        return cell
    }
    
}
