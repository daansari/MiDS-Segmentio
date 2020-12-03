Pod::Spec.new do |spec|
  spec.name           = "MiDSegment"
  spec.version        = "1.0.0"
  spec.swift_version  = "5.0"

  spec.homepage = "https://github.com/daansari/MiDSegment"
  spec.summary = "Animated top/bottom segmented control written in Swift!"
  spec.screenshot = 'https://raw.githubusercontent.com/Yalantis/Segmentio/master/Assets/animation.gif'

  spec.author = "Mint-iOS"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.social_media_url = "https://twitter.com/mint"

  spec.ios.deployment_target = '11.0'
  spec.source       = { :git => "https://github.com/daansari/MiDSegment.git", :tag => spec.version }

  spec.source_files = 'MiDSegment/Source/**/*.swift'
  spec.resources = 'MiDSegment/Source/Badge/Views/*.xib'
  spec.resource_bundle = { 'Segmentio' => 'MiDSegment/Source/Badge/Views/*.xib' }
  spec.module_name  = 'Segmentio'
  spec.requires_arc = true
end
