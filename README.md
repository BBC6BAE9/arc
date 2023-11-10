# Arc

![platform](./platform.png)

Here's an example of a deep link app for Apple platforms, including iOS, tvOS, and watchOS, with macOS currently under development.

With this architecture, you don't need to worry about the organizational structure of navigation components. All you need to do is register a page and develop it, without having to concern yourself with the details of how the navigation is organized.

这是一个支持deep link的 app 脚手架，他支持苹果的全平台。

使用这个脚手架，你不需要再关心导航相关的控件，可以专注于页面级别的开发。如果你想开发一个页面，注册一个页面，然后完成页面开发

```Swift
let url = URL.init(string: "arc://hong.com/aboutpage")!
ArcApp.open(url: url)
```
