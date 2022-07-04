//
//  CustomApplication.h
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface CustomApplication : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (instancetype)sharedInstance;

@end


NS_ASSUME_NONNULL_END
