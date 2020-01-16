//
//  ViewController.swift
//  TableViewSample
//
//  Created by yuki ukai on 2020/01/15.
//  Copyright © 2020 yuki ukai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // priveteは同じソース内からのみアクセスできる
    
    private var tableView = UITableView()
    private var items: [String] = ["茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //　テーブルサイズを画面にどのように配置するか（frame/bounds）
        tableView.frame = view.bounds
        //　デリゲート
        tableView.dataSource = self
        // テーブルを表示
        view.addSubview(tableView)
    }
}

// データソース

extension ViewController: UITableViewDataSource {
    
    // セクションごとのデータ要素数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    // セルの生成
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = items[indexPath.row]
        return cell
        
    }
}
