//
//  PolizasViewController.swift
//  SimpleLibrary
//
//  Created by John Alexis Cristobal Jimenez  on 28/10/20.
//

import UIKit
import Alamofire

public class PolizasViewController: UIViewController {

    @IBOutlet var containerView: UIView!
    @IBOutlet var pageControl: UIPageControl!
    var messageAlert = ""
    var polizasAtlas = false
    var polizasAna = false
    
//    var bannerPageViewController: BannerPrincipalViewController? {
//        didSet {
//            bannerPageViewController?.tutorialDelegate = self
//        }
//    }
    
    @IBOutlet var tableview: UITableView!
    @IBOutlet var vistaNoPolizas: UIView!
    @IBOutlet var menuButton: UIBarButtonItem!
    @IBOutlet var labelnombre: UILabel!
    @IBOutlet var labelNombreNoPolizas: UILabel!
    
    @IBOutlet var noPolizasLabel: UILabel!
    var refreshControl: UIRefreshControl!
    
    @IBOutlet var hola: UILabel!
    @IBOutlet var namelabel: UILabel!
    @IBOutlet var leyendalabel: UILabel!
        
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //let headerss: HTTPHeaders = ["Content-Type": "application/json", "Authorization" : tok]
        print("ji")
        let api = "https://apidev2019.miituo.com/api/InfoClientMobil/Celphone/5586140593"
        AF.request(api,method:.get,parameters:nil,encoding:JSONEncoding.default, headers: nil).responseJSON() { response in
            print(response)
        }
        print("ji 2")
    }
    
    public static func instantiate() -> PolizasViewController {
        let storyboardName = "MiituoBoard"
        let storyboardBundle = Bundle(for: self)
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        
        return storyboard.instantiateViewController(withIdentifier: "PolizasViewController") as! PolizasViewController
    }
    
    public func alo(){
        print("so?")
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
