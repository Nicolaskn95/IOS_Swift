
import UIKit

class CalculatorViewController: UIViewController {
    
    var valueTipPercentage = "0"
    var calculatorBrain = CalculatorBrain()
    var result: Float = 0.0
    var valDivPessoas = 0
    var printPercentage = "0"
    
    @IBOutlet weak var lblSplitNumberPeople: UILabel!
    @IBOutlet weak var btnTwentyPc: UIButton!
    @IBOutlet weak var btnTenPc: UIButton!
    @IBOutlet weak var btnZeroPc: UIButton!
    @IBOutlet weak var stepperSpliNumber: UIStepper!
    @IBOutlet weak var txtBillField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        txtBillField.endEditing(true)
        
        btnTenPc.isSelected = false
        btnZeroPc.isSelected = false
        btnTwentyPc.isSelected = false
        
        sender.isSelected = true
        printPercentage = sender.currentTitle!
        
        if (sender.currentTitle == "0%") {
            valueTipPercentage = ("0.0")
        } else if (sender.currentTitle == "10%"){
            valueTipPercentage = ("0.1")
        } else if (sender.currentTitle == "20%"){
            valueTipPercentage = ("0.2")
        }
        
//        print(sender.currentTitle!.dropLast()) // dropLast() ele remove o ultimo caractere
        
    }
    
    @IBAction func lblSplitNumberAction(_ sender: UIStepper) {
        sender.autorepeat = true
           
        lblSplitNumberPeople.text = String(format: "%.0f", sender.value)
        
        sender.maximumValue = 12
        sender.minimumValue = 0
    }
    
    @IBAction func btnCalculatePressed(_ sender: UIButton) {
        

        var valGorgeta: Float = 0.0
        var valTotalPagamento: Float = 0.0
        
        valGorgeta = (Float(valueTipPercentage) ?? 0.0)
        valDivPessoas = (Int(lblSplitNumberPeople.text ?? "valor nulo") ?? 0)
        valTotalPagamento = (Float(txtBillField.text ?? "valor nulo") ?? 0.0)
        
        result = ((valTotalPagamento * valGorgeta) + valTotalPagamento) / Float(valDivPessoas)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.resultTotal = String(format: "%.2f", result)
            destinationVC.splitPeople = valDivPessoas
            destinationVC.Tip = printPercentage
        }
    }
    
    
}

