//
//  LouisvuittonTableViewController.swift
//  shopp
//
//  Created by 簡吟真 on 2021/4/24.
//

import UIKit
import Foundation

class LouisvuittonTableViewController: UITableViewController {
 
    @IBOutlet var label: UITableView!
    @IBOutlet weak var total: UILabel! //總金額
    
        //數量
        @IBOutlet weak var countLabel1: UILabel!
        @IBOutlet weak var countLabel2: UILabel!
        @IBOutlet weak var countLabel3: UILabel!
        @IBOutlet weak var countLabel4: UILabel!
        @IBOutlet weak var countLabel5: UILabel!
        @IBOutlet weak var countLabel6: UILabel!
        @IBOutlet weak var countLabel7: UILabel!
        @IBOutlet weak var countLabel8: UILabel!
        @IBOutlet weak var countLabel9: UILabel!
        @IBOutlet weak var countLabel10: UILabel!
        
        
        //圖片
        @IBOutlet weak var image1: UIImageView!
        @IBOutlet weak var image2: UIImageView!
        @IBOutlet weak var image3: UIImageView!
        @IBOutlet weak var image4: UIImageView!
        @IBOutlet weak var image5: UIImageView!
        @IBOutlet weak var image6: UIImageView!
        @IBOutlet weak var image7: UIImageView!
        @IBOutlet weak var image8: UIImageView!
        @IBOutlet weak var image9: UIImageView!
        @IBOutlet weak var image10: UIImageView!
        
        
        //商品名稱
        @IBOutlet weak var name1: UILabel!
        @IBOutlet weak var name2: UILabel!
        @IBOutlet weak var name3: UILabel!
        @IBOutlet weak var name4: UILabel!
        @IBOutlet weak var name5: UILabel!
        @IBOutlet weak var name6: UILabel!
        @IBOutlet weak var name7: UILabel!
        @IBOutlet weak var name8: UILabel!
        @IBOutlet weak var name9: UILabel!
        @IBOutlet weak var name10: UILabel!
        
        
        
        //價錢
        @IBOutlet weak var price1: UILabel!
        @IBOutlet weak var price2: UILabel!
        @IBOutlet weak var price3: UILabel!
        @IBOutlet weak var price4: UILabel!
        @IBOutlet weak var price5: UILabel!
        @IBOutlet weak var price6: UILabel!
        @IBOutlet weak var price7: UILabel!
        @IBOutlet weak var price8: UILabel!
        @IBOutlet weak var price9: UILabel!
        @IBOutlet weak var price10: UILabel!
        
        struct Bag {
            let name:String
            let picture:String
            let price:Int
            var count = 0
        }
        var bagInfo = [
            Bag(name: "BOÎTE CHAPEAU SOUPLE MM", picture: "BOÎTE CHAPEAU SOUPLE MM86500", price: 86500),
            Bag(name: "DAUPHINE", picture: "DAUPHINE113000", price: 113000),
            Bag(name: "FLORE 鏈帶錢包", picture: "FLORE 鏈帶錢包52500", price: 52500),
            Bag(name: "LOCKY BB", picture: "LOCKY BB60000", price: 60000),
            Bag(name: "MULTI POCHETTE ACCESSOIRES", picture: "MULTI POCHETTE ACCESSOIRES69500", price: 69500),
            Bag(name: "ONTHEGO GM", picture: "ONTHEGO GM94500", price: 94500),
            Bag(name: "PETITE MALLE", picture: "PETITE MALLE195000", price: 195000),
            Bag(name: "POCHETTE MÉTIS", picture: "POCHETTE MÉTIS84000", price: 84000),
            Bag(name: "SPEEDY BANDOULIÈRE 25", picture: "SPEEDY BANDOULIÈRE 25.56000", price: 56000),
            Bag(name: "SURÈNE MM", picture: "SURÈNE MM86500", price: 86500)
        ]
        func bagTotalPrice(){
            var totalPrice = 0
            for i in 0...9{
                totalPrice += bagInfo[i].count * bagInfo[i].price
            }
            
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.locale = Locale(identifier: "zh_TW")
            formatter.maximumFractionDigits = 0
            let priceString = formatter.string(from: NSNumber(value: totalPrice))
            total.text = "Total  NT." + priceString!
        }
        func checkCount(){
            countLabel1.text = String("數量：\(bagInfo[0].count)")
            countLabel2.text = String("數量：\(bagInfo[1].count)")
            countLabel3.text = String("數量：\(bagInfo[2].count)")
            countLabel4.text = String("數量：\(bagInfo[3].count)")
            countLabel5.text = String("數量：\(bagInfo[4].count)")
            countLabel6.text = String("數量：\(bagInfo[5].count)")
            countLabel7.text = String("數量：\(bagInfo[6].count)")
            countLabel8.text = String("數量：\(bagInfo[7].count)")
            countLabel9.text = String("數量：\(bagInfo[8].count)")
            countLabel10.text = String("數量：\(bagInfo[9].count)")
        }
        func checkCountAndPrice(){
            checkCount()
            bagTotalPrice()
        }
        func initCakeLabel(){
            name1.text = "\(bagInfo[0].name)"
            name2.text = "\(bagInfo[1].name)"
            name3.text = "\(bagInfo[2].name)"
            name4.text = "\(bagInfo[3].name)"
            name5.text = "\(bagInfo[4].name)"
            name6.text = "\(bagInfo[5].name)"
            name7.text = "\(bagInfo[6].name)"
            name8.text = "\(bagInfo[7].name)"
            name9.text = "\(bagInfo[8].name)"
            name10.text = "\(bagInfo[9].name)"
        }
        func initPrice(){
    //        priceLabel1.text = "NT$" + cakeInfo[0].pric.description
            price1.text = "NT.$\(bagInfo[0].price)"
            price2.text = "NT.$\(bagInfo[1].price)"
            price3.text = "NT.$\(bagInfo[2].price)"
            price4.text = "NT.$\(bagInfo[3].price)"
            price5.text = "NT.$\(bagInfo[4].price)"
            price6.text = "NT.$\(bagInfo[5].price)"
            price7.text = "NT.$\(bagInfo[6].price)"
            price8.text = "NT.$\(bagInfo[7].price)"
            price9.text = "NT.$\(bagInfo[8].price)"
            price10.text = "NT.$\(bagInfo[9].price)"
        }
        func initImage(){
            image1.image = UIImage(named: "\(bagInfo[0].picture)")
            image2.image = UIImage(named: "\(bagInfo[1].picture)")
            image3.image = UIImage(named: "\(bagInfo[2].picture)")
            image4.image = UIImage(named: "\(bagInfo[3].picture)")
            image5.image = UIImage(named: "\(bagInfo[4].picture)")
            image6.image = UIImage(named: "\(bagInfo[5].picture)")
            image7.image = UIImage(named: "\(bagInfo[6].picture)")
            image8.image = UIImage(named: "\(bagInfo[7].picture)")
            image9.image = UIImage(named: "\(bagInfo[8].picture)")
            image10.image = UIImage(named: "\(bagInfo[9].picture)")
        }
        func initial(){
            initImage()
            initCakeLabel()
            initPrice()
            bagTotalPrice()
        }

       
     
       
        @IBAction func stepper1(_ sender: UIStepper) {
            bagInfo[0].count = Int(sender.value)
            checkCountAndPrice()
        }
        @IBAction func stepper2(_ sender: UIStepper) {
            bagInfo[1].count = Int(sender.value)
            checkCountAndPrice()
        }
        @IBAction func stepper3(_ sender: UIStepper) {
            bagInfo[2].count = Int(sender.value)
            checkCountAndPrice()
        }
        @IBAction func stepper4(_ sender: UIStepper) {
            bagInfo[3].count = Int(sender.value)
            checkCountAndPrice()
        }
        @IBAction func stepper5(_ sender: UIStepper) {
            bagInfo[4].count = Int(sender.value)
            checkCountAndPrice()
        }
        @IBAction func stepper6(_ sender: UIStepper) {
            bagInfo[5].count = Int(sender.value)
            checkCountAndPrice()
        }
        @IBAction func stepper7(_ sender: UIStepper) {
            bagInfo[6].count = Int(sender.value)
            checkCountAndPrice()
        }
        @IBAction func stepper8(_ sender: UIStepper) {
            bagInfo[7].count = Int(sender.value)
            checkCountAndPrice()
        }
        @IBAction func stepper9(_ sender: UIStepper) {
            bagInfo[8].count = Int(sender.value)
            checkCountAndPrice()
        }
        @IBAction func stepper10(_ sender: UIStepper) {
            bagInfo[9].count = Int(sender.value)
            checkCountAndPrice()
        }
        
      
        override func viewDidLoad() {
            super.viewDidLoad()
            initial()

    }
    }
