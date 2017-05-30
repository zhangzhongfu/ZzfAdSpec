
Pod::Spec.new do |s|
  s.name         = "ZzfAdSpec"
  s.version      = "0.0.1"
  s.summary      = "ZzfAdSpec  无限轮播图"
  s.description  = <<-DESC
                    无限轮播图的spec
                   DESC

  s.homepage     = "http://EXAMPLE/ZzfAdSpec"

  s.license      = "MIT"

  s.author             = { "zzf" => "zzf@buduobushao.com" }
  s.platform     = :ios

  s.source       = { :git => "https://github.com/zhangzhongfu/ZzfAdSpec.git", :tag => s.version }
  s.source_files  = "ZzfAdSpec/*.{h,m}"

  s.requires_arc = true

end
