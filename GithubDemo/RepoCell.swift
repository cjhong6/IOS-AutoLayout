//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Chengjiu Hong on 6/1/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var startLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet{
            nameLabel.text = repo.name
            authorLabel.text = repo.ownerHandle
            descriptionLabel.text = repo.repoDescription
            startLabel.text = "\(repo.stars!)"
            forkLabel.text = "\(repo.forks!)"
            thumbView.setImageWith( NSURL(string: repo.ownerAvatarURL!) as! URL)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbView.layer.cornerRadius = 3
        thumbView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
