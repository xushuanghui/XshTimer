

Pod::Spec.new do |s|
s.name         = 'XshTimer'
s.version      = '1.0.1'
s.summary      = 'An ActionSheet like WeChat'
s.homepage     = 'https://github.com/xushuanghui/XshTimer'
s.license      = 'MIT'
s.authors      = { 'xushuanghui' => '841272293@qq.com' }
s.platform     = :ios, '6.0'
s.source       = {:git => 'https://github.com/xushuanghui/XshTimer.git', :tag => s.version}
s.source_files = 'XshTimer/Classes/**/*'
s.requires_arc = true
end
