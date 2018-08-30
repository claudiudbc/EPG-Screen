//
//  EGPTableViewCell.swift
//  EPG Screen
//
//  Created by Claudiu Dobre on 29/08/2018.
//  Copyright © 2018 Claudiu Dobre. All rights reserved.
//

import UIKit

class EGPTableViewCell: UITableViewCell {

    private let customImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    var imageUrl: String? {
        didSet {
            if let imageUrl = imageUrl {
                customImageView.loadImageWithUrl(urlString: imageUrl)
            }
        }
    }
}
