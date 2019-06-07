
Pod::Spec.new do |spec|
  spec.name             = 'CometChat-Liftoff'
  spec.version          = '0.0.1.beta'
  spec.license          =  {:type => 'MIT', :file => 'License.md'}
  spec.homepage         = 'https://www.cometchat.com/pro'
  spec.authors          = { 'Jeet Kapadia' => 'jeet.kapadia@inscripts.in'}
  spec.summary          = 'LiftOff is a simple, fast and ready to use plugin'
  spec.source          = { :git => "https://github.com/jeetkapadia/LiftOff.git", :tag => '0.0.1.beta'}
  spec.source_files     = 'Liftoff.framework/Headers/*.{h,m,swift}'
  spec.library          = 'z', 'sqlite3', 'xml2.2'
  spec.xcconfig         = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  spec.vendored_frameworks = 'Liftoff.framework','LiftoffEngine.framework'
  spec.documentation_url = 'https://prodocs.cometchat.com/docs/ios-quick-start'

  spec.framework        = 'Liftoff'
  spec.exclude_files    = "Classes/Exclude"
  spec.platform         = :ios, "10.0"
  spec.dependency 'CometChatPro'
end