
Pod::Spec.new do |s|

  s.name         = "T21KeyboardState"
  s.version      = "1.2.0"
  s.summary      = "T21KeyboardState is a helper to manage keyboard events"
  s.author    = "Edwin Peña"
  s.platform     = :ios
  s.ios.deployment_target = "10.0"
  s.source       = { :git => "https://github.com/worldline-spain/T21KeyboardState-iOS.git", :tag => "1.2.0" }
  s.source_files  = "Classes", "src/**/*.{swift}"
  s.framework  = "UIKit"
  s.requires_arc = true
  s.dependency "T21Notifier" , "~>1.0"
  s.homepage = "https://github.com/worldline-spain/T21KeyboardState-iOS"
  s.license = "https://github.com/worldline-spain/T21KeyboardState-iOS/blob/master/LICENSE"

end
