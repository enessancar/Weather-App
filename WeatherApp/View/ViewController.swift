
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 6
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        textField.text = ""
    }

    @IBAction func button(_ sender: UIButton) {
        
        let city = textField.text ?? ""
        
        if city.isEmpty {
            alert()
        }
        else{
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailsViewController
            vc.city = city
            
            self.show(vc, sender: nil)
        }
        
        
    }
    
    
    func alert(){
        let alert = UIAlertController(title: "WARNING", message: "Please enter the city name", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)

    }
}

