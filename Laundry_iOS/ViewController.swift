//
//  ViewController.swift
//  Laundry_iOS
//
//  Created by Mac-003 on 29/09/22.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
//MARK:- Outlets
    
    @IBOutlet weak var viewMain: UIView!
    
    @IBOutlet weak var viewHome: UIView!
    @IBOutlet weak var viewOrders: UIView!
    @IBOutlet weak var viewNewOrder: UIView!
    @IBOutlet weak var viewNotifications: UIView!
    @IBOutlet weak var viewMyAccount: UIView!
    
    @IBOutlet weak var imgBg: UIImageView!
    
    @IBOutlet weak var viewOrdersOuter: UIView!
    @IBOutlet weak var viewOrdersInner: UIView!
    
    @IBOutlet weak var viewGuideOuter: UIView!
    @IBOutlet weak var viewGuideInner: UIView!
    
    @IBOutlet weak var viewAboutUsOuter: UIView!
    @IBOutlet weak var viewAboutUsInner: UIView!
    
    @IBOutlet weak var viewContactUsOuter: UIView!
    @IBOutlet weak var viewContactUsInner: UIView!
    
    
    @IBOutlet weak var viewFooter: UIView!
    @IBOutlet weak var viewShadow: UIView!
    
    @IBOutlet weak var icnHome: UIImageView!
    @IBOutlet weak var lblHome: UILabel!
    @IBOutlet weak var btnHome: UIButton!
    
    @IBOutlet weak var icnOrders: UIImageView!
    @IBOutlet weak var lblOrders: UILabel!
    @IBOutlet weak var btnOrders: UIButton!
    
    @IBOutlet weak var viewNewOrderBG: UIView!
    @IBOutlet weak var icnNewOrder: UIImageView!
    @IBOutlet weak var lblNewOrder: UILabel!
    @IBOutlet weak var btnNewOrder: UIButton!
    
    @IBOutlet weak var icnNotifications: UIImageView!
    @IBOutlet weak var lblNotifications: UILabel!
    @IBOutlet weak var btnNotifications: UIButton!
    
    @IBOutlet weak var icnMyAccount: UIImageView!
    @IBOutlet weak var lblMyAccount: UILabel!
    @IBOutlet weak var btnMyAccount: UIButton!
    
    
//MARK:- Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        viewInitialise()
        
    }
    
    
}

//MARK:-
//MARK:- General methods
extension ViewController {
    
    func viewInitialise() {
        
        viewNewOrderBG.layer.cornerRadius = viewNewOrderBG.frame.width/2;
        viewNewOrderBG.clipsToBounds  =  true
        
        self.imgBg.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 8 * self.imgBg.frame.height / 100 )
        
        self.viewFooter.roundCorners(corners: [.topLeft, .topRight], radius: 8.0)
        self.viewShadow.addTopShadow(shadowColor: UIColor.gray, shadowOpacity: 0.3, shadowRadius: 3, offset: CGSize(width: 0.0, height : -12.0))
        
        self.viewOrdersOuter.roundCorners(corners: [.allCorners], radius: 12 * self.viewOrdersOuter.frame.height / 100)
        self.viewGuideOuter.roundCorners(corners: [.allCorners], radius: 12 * self.viewGuideOuter.frame.height / 100)
        self.viewAboutUsOuter.roundCorners(corners: [.allCorners], radius: 12 * self.viewAboutUsOuter.frame.height / 100)
        self.viewContactUsOuter.roundCorners(corners: [.allCorners], radius: 12 * self.viewContactUsOuter.frame.height / 100)
        
        viewOrdersInner.layer.cornerRadius = viewOrdersInner.frame.height/2;
        viewOrdersInner.clipsToBounds  =  true
        viewGuideInner.layer.cornerRadius = viewGuideInner.frame.height/2;
        viewGuideInner.clipsToBounds  =  true
        viewAboutUsInner.layer.cornerRadius = viewAboutUsInner.frame.height/2;
        viewAboutUsInner.clipsToBounds  =  true
        viewContactUsInner.layer.cornerRadius = viewContactUsInner.frame.height/2;
        viewContactUsInner.clipsToBounds  =  true
        
        
        activeTab(CurrTab: TabScreens.Home)
    }
    
    func activeTab(CurrTab: String) {
        
        switch CurrTab {
        case TabScreens.Home:
            
            viewHome.isHidden = false
            viewOrders.isHidden = true
            viewNewOrder.isHidden = true
            viewNotifications.isHidden = true
            viewMyAccount.isHidden = true
            
            lblHome.textColor = UIColor.ThemeColor.darkColour
            lblOrders.textColor = UIColor.black
            lblNewOrder.textColor = UIColor.white
            lblNotifications.textColor = UIColor.black
            lblMyAccount.textColor = UIColor.black
            
            icnHome.image = UIImage.init(named: "icnHomeSel")
            icnOrders.image = UIImage.init(named: "icnOrdersDeSel")
            icnNotifications.image = UIImage.init(named: "icnNotificationDeSel")
            icnMyAccount.image = UIImage.init(named: "icnMyAccountDeSel")
            
            break
        case TabScreens.Orders:
            viewHome.isHidden = true
            viewOrders.isHidden = false
            viewNewOrder.isHidden = true
            viewNotifications.isHidden = true
            viewMyAccount.isHidden = true
            
            lblHome.textColor = UIColor.black
            lblOrders.textColor = UIColor.ThemeColor.darkColour
            lblNewOrder.textColor = UIColor.white
            lblNotifications.textColor = UIColor.black
            lblMyAccount.textColor = UIColor.black
            
            icnHome.image = UIImage.init(named: "icnHomeDeSel")
            icnOrders.image = UIImage.init(named: "icnOrdersSel")
            icnNotifications.image = UIImage.init(named: "icnNotificationDeSel")
            icnMyAccount.image = UIImage.init(named: "icnMyAccountDeSel")
            
            
            break
        case TabScreens.NewOrder:
            viewHome.isHidden = true
            viewOrders.isHidden = true
            viewNewOrder.isHidden = false
            viewNotifications.isHidden = true
            viewMyAccount.isHidden = true
            
            lblHome.textColor = UIColor.black
            lblOrders.textColor = UIColor.black
            lblNewOrder.textColor = UIColor.ThemeColor.darkColour
            lblNotifications.textColor = UIColor.black
            lblMyAccount.textColor = UIColor.black
            
            icnHome.image = UIImage.init(named: "icnHomeDeSel")
            icnOrders.image = UIImage.init(named: "icnOrdersDeSel")
            icnNotifications.image = UIImage.init(named: "icnNotificationDeSel")
            icnMyAccount.image = UIImage.init(named: "icnMyAccountDeSel")
            
            break
        case TabScreens.Notifications:
            viewHome.isHidden = true
            viewOrders.isHidden = true
            viewNewOrder.isHidden = true
            viewNotifications.isHidden = false
            viewMyAccount.isHidden = true
            
            lblHome.textColor = UIColor.black
            lblOrders.textColor = UIColor.black
            lblNewOrder.textColor = UIColor.white
            lblNotifications.textColor = UIColor.ThemeColor.darkColour
            lblMyAccount.textColor = UIColor.black
            
            icnHome.image = UIImage.init(named: "icnHomeDeSel")
            icnOrders.image = UIImage.init(named: "icnOrdersDeSel")
            icnNotifications.image = UIImage.init(named: "icnNotificationSel")
            icnMyAccount.image = UIImage.init(named: "icnMyAccountDeSel")
            
            break
        case TabScreens.MyAccount:
            viewHome.isHidden = true
            viewOrders.isHidden = true
            viewNewOrder.isHidden = true
            viewNotifications.isHidden = true
            viewMyAccount.isHidden = false
            
            lblHome.textColor = UIColor.black
            lblOrders.textColor = UIColor.black
            lblNewOrder.textColor = UIColor.white
            lblNotifications.textColor = UIColor.black
            lblMyAccount.textColor = UIColor.ThemeColor.darkColour
            
            icnHome.image = UIImage.init(named: "icnHomeDeSel")
            icnOrders.image = UIImage.init(named: "icnOrdersDeSel")
            icnNotifications.image = UIImage.init(named: "icnNotificationDeSel")
            icnMyAccount.image = UIImage.init(named: "icnMyAccountSel")
            
            break
        default:
            viewHome.isHidden = false
            viewOrders.isHidden = true
            viewNewOrder.isHidden = true
            viewNotifications.isHidden = true
            viewMyAccount.isHidden = true
            
            lblHome.textColor = UIColor.ThemeColor.darkColour
            lblOrders.textColor = UIColor.black
            lblNewOrder.textColor = UIColor.white
            lblNotifications.textColor = UIColor.black
            lblMyAccount.textColor = UIColor.black
            
            icnHome.image = UIImage.init(named: "icnHomeSel")
            icnOrders.image = UIImage.init(named: "icnOrdersDeSel")
            icnNotifications.image = UIImage.init(named: "icnNotificationDeSel")
            icnMyAccount.image = UIImage.init(named: "icnMyAccountDeSel")
            
            break
        }
        
        
    }
    
    
}


//MARK:-
//MARK:- Action Methods
extension ViewController {
    
    @IBAction func btnHomePressed(_ sender: Any) {
        activeTab(CurrTab: TabScreens.Home)
    }
    
    @IBAction func btnOrdersPressed(_ sender: Any) {
        activeTab(CurrTab: TabScreens.Orders)
    }
    
    @IBAction func btnNewOrderPressed(_ sender: Any) {
        activeTab(CurrTab: TabScreens.NewOrder)
    }
    
    @IBAction func btnNotificationsPressed(_ sender: Any) {
        activeTab(CurrTab: TabScreens.Notifications)
    }
    @IBAction func btnMyAccountPressed(_ sender: Any) {
        activeTab(CurrTab: TabScreens.MyAccount)
    }
    
    @IBAction func btnSideMenuPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Laundry Web", message: "New Features Coming Soon!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func btnOrdersOptionPressed(_ sender: Any) {
        activeTab(CurrTab: TabScreens.Orders)
        
    }
    
    @IBAction func btnGuidePressed(_ sender: Any) {
        let alert = UIAlertController(title: "How it works", message: "New Features Coming Soon!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func btnAboutUsPressed(_ sender: Any) {
        let alert = UIAlertController(title: "About Us", message: "New Features Coming Soon!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func btnContactUsPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Contact US", message: "New Features Coming Soon!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}

