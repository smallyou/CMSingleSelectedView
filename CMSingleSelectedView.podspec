

Pod::Spec.new do |s|



s.name         = "CMSingleSelectedView"
s.version      = "1.0.0"
s.ios.deployment_target = '6.0'
s.osx.deployment_target = '10.8'
s.summary      = "A Single Selected View like UIActionSheet which popped from the bottom of View"
s.homepage     = "https://github.com/smallyou/CMSingleSelectedView"
s.license      = "MIT"
s.author             = { "smallyou" => "smallyou@126.com" }
s.social_media_url   = "http://www.jianshu.com/users/ebb60643b57c/latest_articles"
s.source       = { :git => "https://github.com/smallyou/CMSingleSelectedView.git", :tag => s.version }
s.source_files  = "Pod/Classes/**/*"
s.requires_arc = true
 
end
