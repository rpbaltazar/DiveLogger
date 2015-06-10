class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'DiveLogger'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    if App::Persistence['authToken'].nil?
      showWelcomeController
    end

    true
  end

  def showWelcomeController
    @welcomeController = WelcomeController.alloc.init
    @welcomeNavigationController = UINavigationController.alloc.init
    @welcomeNavigationController.pushViewController @welcomeNavigationController, animated: false

    TasksListController.controller.presentModalViewController @welcomeNavigationController, animated: true
  end
end
