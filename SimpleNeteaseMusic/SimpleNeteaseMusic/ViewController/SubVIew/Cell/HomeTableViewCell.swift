//
//  HomeTableViewCell.swift
//  SimpleNeteaseMusic
//
//  Created by shenjie on 2021/5/14.
//  Copyright © 2021 shenjie. All rights reserved.
//

import Foundation
import UIKit

class BannerCell: UITableViewCell {
     
}


/// UITableViewCell 的基类
class BaseViewCell: UITableViewCell {
    
}

/// 分页滚动 Cell
class ScrollBannerCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var scrollBanner: JJNewsBanner!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? BannerModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        scrollBanner = JJNewsBanner(frame: CGRect.zero)
        self.contentView.addSubview(scrollBanner!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: BannerModel) {
        self.scrollBanner.frame = model.frame
        self.scrollBanner.updateUI(model: model, placeholderImage: UIImage(named: "ad_placeholder"))
    }
}


/// 首页-发现 圆形按钮
class CircleMenusCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var homeMenu: HomeMenu!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? MenusModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        homeMenu = HomeMenu(frame: CGRect.zero)
        self.contentView.addSubview(homeMenu!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: MenusModel) {
        self.homeMenu.frame = model.frame
        self.homeMenu.updateUI(data: model.data)
    }
}

/// 首页-发现 推荐歌单
class PlaylistRcmdCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var rcmdPlayListView: CardCollectionView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? PlaylistRcmdModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        rcmdPlayListView = CardCollectionView(frame: CGRect.zero)
        self.contentView.addSubview(rcmdPlayListView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: PlaylistRcmdModel) {
        self.rcmdPlayListView.frame = model.frame
        self.rcmdPlayListView.updateUI(songList: model.creatives)
    }
}

/// 首页-发现 个性推荐歌单
class StyleRcmdCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var rcmdStyleView: PrivateCustomView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? StyleRcmdModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        rcmdStyleView = PrivateCustomView(frame: CGRect.zero)
        self.contentView.addSubview(rcmdStyleView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: StyleRcmdModel) {
        self.rcmdStyleView.frame = model.frame
        self.rcmdStyleView.updateUI(privateData: model.creatives)
    }
}


/// 首页-发现 精选视频
class MusicMLogCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var musicMLogView: MusicMLogView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? MusicMLOGModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        musicMLogView = MusicMLogView(frame: CGRect.zero)
        self.contentView.addSubview(musicMLogView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: MusicMLOGModel) {
        self.musicMLogView.frame = model.frame
        self.musicMLogView.updateUI(songList: model.mLog)
    }
}


/// 首页-发现 雷达歌单
class MGCPlayListCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var mgcListView: CardCollectionView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? MgcPlaylistModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        mgcListView = CardCollectionView(frame: CGRect.zero)
        self.contentView.addSubview(mgcListView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: MgcPlaylistModel) {
        self.mgcListView.frame = model.frame
        self.mgcListView.updateUI(songList: model.creatives)
    }
}

/// 首页-发现  音乐日历
class CalendarCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var calendarView: MusicCalendarView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? MusicCalendarModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        calendarView = MusicCalendarView(frame: CGRect.zero)
        self.contentView.addSubview(calendarView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: MusicCalendarModel) {
        self.calendarView.frame = model.frame
        self.calendarView.updateUI(data: model.creatives)
    }
}


/// 首页-发现  专属歌单
class OfficialPlayListCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var officialListView: CardCollectionView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? OfficialPlaylistModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        officialListView = CardCollectionView(frame: CGRect.zero)
        self.contentView.addSubview(officialListView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: OfficialPlaylistModel) {
        self.officialListView.frame = model.frame
        self.officialListView.updateUI(songList: model.creatives)
    }
}

/// 首页-发现  新歌 /新碟 /数字专辑
class NewAlbumsCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var newAlbumsView: PrivateCustomView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? AlbumNewSongModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        newAlbumsView = PrivateCustomView(frame: CGRect.zero)
        self.contentView.addSubview(newAlbumsView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: AlbumNewSongModel) {
        self.newAlbumsView.frame = model.frame
        self.newAlbumsView.updateUI(privateData: model.creatives)
    }
}


/// 首页-发现  播客推荐
class VoiceCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var voiceListView: CardCollectionView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? VoiceListRcmdModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        voiceListView = CardCollectionView(frame: CGRect.zero)
        self.contentView.addSubview(voiceListView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: VoiceListRcmdModel) {
        self.voiceListView.frame = model.frame
        self.voiceListView.updateUI(songList: model.creatives)
    }
}

/// 首页-发现  广播 24 小时
class PodcastCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var podCastView: PodcastView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? Podcast24Model else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        podCastView = PodcastView(frame: CGRect.zero)
        self.contentView.addSubview(podCastView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: Podcast24Model) {
        self.podCastView.frame = model.frame
        self.podCastView.updateUI(voiceList: model.creatives)
    }
}


/// 首页-发现  视频合辑
class VideoPlayListCell: BaseViewCell {
    class var identifier: String {
          return String(describing: self)
    }
    
    var videoListView: CardCollectionView!
    
    var item: HomeViewModelSection? {
        didSet {
            guard let item = item as? VideoPlaylistModel else {
                return
            }
            self.setupUI(model: item)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        /// 初始化
        videoListView = CardCollectionView(frame: CGRect.zero)
        self.contentView.addSubview(videoListView!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setupUI(model: VideoPlaylistModel) {
        self.videoListView.frame = model.frame
        self.videoListView.updateUI(songList: model.creatives)
    }
}
