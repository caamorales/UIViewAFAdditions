Pod::Spec.new do |s|
  s.name     = 'UIView+AF+Additions'
  s.version  = '1.0'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'Convenience category for frame and border attributes.'
  s.homepage = 'https://github.com/melvitax/UIViewAFAdditions'
  s.author   = { 'Melvin Rivera' => 'melvin@allforces.com' }
  s.source   = { :git => 'https://github.com/melvitax/UIViewAFAdditions.git', :tag => s.version.to_s }
  s.description = 'A UIView conveniene category for handling frame position, size as well as borders.'
  s.source_files = 'UIView+AF+Additions/*'
  s.framework    = 'QuartzCore'
  s.requires_arc = true
end
