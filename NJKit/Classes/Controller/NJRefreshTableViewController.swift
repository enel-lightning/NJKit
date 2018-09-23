//
//  NJRefreshTableViewController.swift
//  NJSwiftTodayNews
//
//  Created by HuXuPeng on 2018/5/15.
//  Copyright © 2018年 njhu. All rights reserved.
//

import UIKit

open class NJRefreshTableViewController: NJTableViewController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        tableView.mj_header = NJRefreshNormalHeader(refreshingBlock: {[weak self] () -> Void in
            if let strongSelf = self {
                strongSelf.refreshing(isMore: false)
            }
        })
        tableView.mj_footer = NJRefreshAutoNormalFooter(refreshingBlock: {[weak self] () -> Void in
            if let strongSelf = self {
                strongSelf.refreshing(isMore: true)
            }
        })
        tableView.mj_header.beginRefreshing()
    }
    open func loadData(isMore: Bool) {
        
    }
}

extension NJRefreshTableViewController {
    private func refreshing(isMore: Bool) {
        if isMore {
            if tableView.mj_header.isRefreshing {
                tableView.mj_footer.endRefreshing()
                return
            }
            tableView.mj_header.isHidden = true
            tableView.mj_footer.isHidden = false
        } else {
            if tableView.mj_footer.isRefreshing {
                tableView.mj_header.endRefreshing()
                return
            }
            tableView.mj_header.isHidden = false
            tableView.mj_footer.isHidden = true
        }
        self.loadData(isMore: isMore)
    }
}

extension NJRefreshTableViewController {
    // 子类需要调用调用
    public func endHeaderFooterRefreshing() {
        if tableView.mj_header.isRefreshing {
            tableView.mj_header.endRefreshing()
        }
        if tableView.mj_footer.isRefreshing {
            tableView.mj_footer.endRefreshing()
        }
        tableView.mj_footer.isHidden = true
        tableView.mj_header.isHidden = false
        for section in 0..<tableView.numberOfSections {
            if tableView.numberOfRows(inSection: section) > 0 {
                tableView.mj_footer.isHidden = false
                break
            }
        }
    }
}

extension NJRefreshTableViewController {
    open override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        super.scrollViewWillBeginDragging(scrollView)
        var contentInset = scrollView.contentInset
        contentInset.bottom -= scrollView.mj_footer.frame.size.height
        scrollView.scrollIndicatorInsets = contentInset
    }
}

