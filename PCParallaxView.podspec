Pod::Spec.new do |s|
  s.name          = 'PCParallaxView'
  s.version       = '0.0.1'
  s.summary       = 'A UIView category that adds a parallax effect to the UIView with a given UIImage.'
  s.homepage      = 'http://pilcrow.co/'
  s.author        = { 'Brandon Zacharie' => 'brandon.zacharie@pilcrow.co',
                      'DzuyAn Nguyen' => 'dzuyan.nguyen@pilcrow.co' }
  s.license       = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.source        = { :git => 'https://github.com/PilcrowCo/PCParallaxView.git', :tag => s.version.to_s }
  s.source_files  = 'PCParallaxView/**/*.{h,m}'
  s.frameworks    = 'UIKit'
  s.platform      = :ios, '7.0'
  s.requires_arc  = true
end