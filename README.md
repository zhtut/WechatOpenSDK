# WechatOpenSDK

微信 opensdk 的 swift package manager 封装

## 使用方法

1、 在 Package 中的 dependencies 加入引用

```swift
.package(url: "https://github.com/zhtut/WechatOpenSDK.git", branch: "main"),
```

目前的微信版本号是2.0.2

2、 在 target 的 dependencies 加入引用`"WechatOpenSDK"`

```swift
.target(name: "App", dependencies: [
            "WechatOpenSDK"
        ])
```

3、使用的地方引入模块

```swift
import WechatOpenSDK
```

本来要使用tag的，但是这里打tag系统会报一个错误
the target 'WechatOpenSDKSetting' in product 'WechatOpenSDK' contains unsafe build flags
这里又不好去掉，因为WXApi是ObjC的类，使用了Category，需要在编译的时候在Other Link Flags加上-ObjC命令，
这个应该是系统的bug，使用分支和本地path都可以编译通过，就使用tag不行，暂且就先使用分支吧
