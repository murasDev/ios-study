//
//  IntroViewController.swift
//  test
//
//  Created by Murilo Castilho da Campos on 01/09/23.
//

import UIKit

final class IntroViewController: UIViewController {
    private var customView: IntroView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView()
    }
    
    private func buildView() {
        view = IntroView()
        customView = view as? IntroView
    }
}
