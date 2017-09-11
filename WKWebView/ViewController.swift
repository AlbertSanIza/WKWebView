//
//  ViewController.swift
//  WKWebView
//
//  Created by Albert Sanchez on 9/11/17.
//  Copyright © 2017 Albert Sanchez. All rights reserved.
//
import Cocoa
import WebKit
class ViewController: NSViewController {
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(myRequest(url: "https://www.apple.com"))
    }
    override var representedObject: Any? {
        didSet {
        }
    }
    func myRequest(url: String) -> URLRequest {
        return URLRequest(url: URL(string: url)!)
    }
}

