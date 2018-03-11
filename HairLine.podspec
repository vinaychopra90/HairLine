Pod::Spec.new do |s|
s.name             = 'HairLine'
s.version          = '1.0'
s.summary          = 'This is the first release of this project.'

s.description      = <<-DESC
Hairline draws crisp separators in Tableview / Collection View or NavigationBar . Often custom design requires separators which can't be achieved with native separators as its a shadow.
DESC

s.homepage         = 'https://github.com/vinaychopra90/HairLine'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { '<Vinay Chopra>' => '<vinaychopra90@gmail.com>' }
s.source           = { :git => 'https://github.com/vinaychopra90/HairLine.git', :tag => s.version.to_s }
s.swift_version    = '3.2'

s.ios.deployment_target = '9.0'
s.source_files = 'HairLine/HairLine.swift'

end
