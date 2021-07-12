//
//  ViewController.swift
//  SwiftyJSONDemo
//
//  Created by VPJacob on 2021/7/12.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initJsonData()
    }

    func initJsonData() {
        var jsonData:Data?
        if let file = Bundle.main.path(forResource: "SwiftyJSONTests.json", ofType: nil) {
            jsonData = try? Data(contentsOf: URL(fileURLWithPath: file))
        }else{
            print("fail")
        }
        
        do {
//            let jsonObj = try JSONSerialization.jsonObject(with: jsonData!, options: .allowFragments)
            let json = try JSON(data: jsonData!)

            for (index,item) in json["result"].arrayObject?.enumerated() ?? [].enumerated()  {
                let jsonItemData = JSON(item)
                let model = GetFlowTodoExt(jsonItemData)
                
                print(model)
                print(index)
            }
            
        } catch  {
            
        }
        
    }

}

struct GetFlowTodoExt {
    var flowBizId :String?
    var flowId : String?
    var flowInstId : String?
    var flowName : String?

    init(_ jsonData : JSON) {
        flowBizId = jsonData["flowBizId"].stringValue
        flowId = jsonData["flowId"].stringValue
        flowInstId = jsonData["flowInstId"].stringValue
        flowName = jsonData["flowName"].stringValue

    }
    
}
