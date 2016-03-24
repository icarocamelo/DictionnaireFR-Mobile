//
//  FirstViewController.swift
//  DictionnaireFr
//
//  Created by IcaroCamelo on 2016-03-08.
//  Copyright © 2016 IcaroCamelo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var txtAreaResult: UITextView!
    @IBOutlet weak var webViewResult: UIWebView!

    @IBAction func btnSearchTouchDown(sender: AnyObject) {
        let svc = BackendService();
        let url = "http://www.le-dictionnaire.com/definition.php?mot="
        let term = txtSearch.text!

        svc.makeRequest(){
            (data) ->  Void in
            print("response data:\(data)")

        }

        let result = svc.search(txtSearch.text);
        webViewResult.loadRequest(NSURLRequest(URL: NSURL(string: url + term)!))
        txtAreaResult.text = result;
    }
}

