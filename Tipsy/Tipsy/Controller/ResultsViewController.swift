
import UIKit

class ResultsViewController: UIViewController {

    var resultTotal: String = "0"
    var splitPeople: Int = 0
    var Tip: String = "0"
    
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var lblSettings: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTotal.text = resultTotal
        lblSettings.text = "Split between \(splitPeople) people, with \(Tip) tip"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnRecalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }


}
