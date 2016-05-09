
Pod::Spec.new do |s|
  s.name             = "MZCroppableView"
  s.version          = "0.1.0"
  s.summary          = "Irregular image cropping."

  s.description      = <<-DESC
                        MZCroppableView is a subclass of UIView that helps in irregular image cropping.
                        This project is based on the logic of JBCroppableView and i just modified it according to my requirement and share with others so all credit goes to Javier Berlana, Mobile One2One
                       DESC

  s.homepage         = "https://github.com/mzeeshanid/MZCroppableView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Muhammad Zeeshan" => "mzeeshanid@yahoo.com" }
  s.source           = { :git => "https://github.com/mzeeshanid/MZCroppableView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mzeeshanid'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MZCroppableView/Classes/**/*'
  s.frameworks = 'UIKit', 'Foundation'
end
