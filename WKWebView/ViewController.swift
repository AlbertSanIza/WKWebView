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
    @IBAction func appleClicked(_ sender: Any) {
        webView.load(myRequest(url: "https://www.apple.com"))
    }
    @IBAction func googleClicked(_ sender: Any) {
        webView.load(myRequest(url: "https://www.google.com"))
    }
    @IBAction func localFilesClicked(_ sender: Any) {
        do {
            let filePath = Bundle.main.path(forResource: "index", ofType: "html")
            let contents =  try String(contentsOfFile: filePath!, encoding: .utf8)
            let baseUrl = URL(fileURLWithPath: filePath!)
            webView.loadHTMLString(contents as String, baseURL: baseUrl)
        } catch { }
    }
    func myRequest(url: String) -> URLRequest {
        return URLRequest(url: URL(string: url)!)
    }
}

