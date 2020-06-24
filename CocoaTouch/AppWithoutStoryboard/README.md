1. Delete Main.storyboard
2. Delete Info.plist Main storyboard file base name 
3. Delete Application Scene Manifest Storyboard Name
4. Or search Main and delete all the `Main` related items in Info.plist 
5. iOS13 and after Add `UIWindow *window` property in scene delegate, and in `(void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions` 
add following code:
```objective-c
UIWindowScene * windowScene = (UIWindowScene *)scene;
    _window = [[UIWindow alloc] initWithFrame:windowScene.coordinateSpace.bounds];
    _window.windowScene = windowScene;
    _window.backgroundColor = [UIColor blueColor];
    [_window setRootViewController:[ViewController new]];
    [_window makeKeyAndVisible];
```
Before iOS 13, Add `UIWindow *window` property in app delegate, and in `(BOOL)appliaction:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions` add:
```objective-c
self.window =
[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
self.window.backgroundColor = [UIColor whiteColor];
[self.window makeKeyAndVisible];
```