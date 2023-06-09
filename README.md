# wechat_open_sdk

微信 opensdk 的 swift package manager 封装

## 使用方法

1、 在 Package 中的 dependencies 加入引用

```swift
.package(url: "https://github.com/zhtut/WechatOpenSDK.git", "2.0.0"..."10.0.0"),
```

版本号看情况引入，上面的情况是大于 2 并小于 10 的任意版本号

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
