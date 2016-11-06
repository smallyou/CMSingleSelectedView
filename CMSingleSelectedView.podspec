

Pod::Spec.new do |s|



  s.name         = "CMSingleSelectedView"
  s.version      = "0.0.1"
  s.ios.deployment_target = "7.0"
  s.summary      = "A Single Selected View like UIActionSheet which popped from the bottom of View."
  s.description  = <<-DESC
                   DESC

  s.homepage     = "https://github.com/smallyou/CMSingleSelectedView"




  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "smallyou" => "smallyou@126.com" }
  s.social_media_url = "http://www.jianshu.com/users/ebb60643b57c/latest_articles"
  s.source       = { :git => "https://github.com/smallyou/CMSingleSelectedView", :tag => s.version }

  s.source_files  = "CMSingleSelectedView/*"
  s.exclude_files = "Classes/Exclude"
  s.resources = ""
  s.requires_arc = true

end
