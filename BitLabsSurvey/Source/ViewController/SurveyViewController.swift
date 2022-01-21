//
//  SurveyViewController.swift
//  BitLabsSurvey
//
//  Created by developer on 21/01/22.
//

import Foundation
import UIKit
import WebKit

class SurveyViewController: UIViewController {
    
    var webView : WKWebView!
    
    static let identifier = String(describing: SurveyViewController.self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)
        loadRequest()
    }
    
    private func loadRequest() {
        if let url = URL(string: "https://www.apple.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    @IBAction func btnCloseTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
