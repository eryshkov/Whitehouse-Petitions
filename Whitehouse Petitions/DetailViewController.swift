//
//  DetailViewController.swift
//  Whitehouse Petitions
//
//  Created by Evgeniy Ryshkov on 07/12/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    
    var detailItem: Petition?
    
    override func loadView() {
        super.loadView()
        webView = WKWebView()
        view = webView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detailItem = detailItem else { return }
        
        let html = """
        <html> <head> <meta name="viewport" content="width=device-width, initialscale=1"> <style> body { font-size: 150%; } </style> </head> <body> \(detailItem.body) </body> </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)
    }
    
}
