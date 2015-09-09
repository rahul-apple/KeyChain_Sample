//
//  AppDelegate.m
//  KeyChain_Sample
//
//  Created by RAHUL'S MAC MINI on 09/09/15.
//  Copyright (c) 2015 iDev. All rights reserved.
//

#import "AppDelegate.h"
#import "VROKeyChain.h"
#define SERVICE_NAME @"ANY_NAME_FOR_YOU"
#define GROUP_NAME @"YOUR_APP_ID.com.apps.shared" //GROUP NAME should start with application identifier.
@interface AppDelegate (){
    VROKeyChain * keychain;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    keychain =[[VROKeyChain alloc] initWithService:SERVICE_NAME withGroup:nil];
    return YES;
}
//////////////////* KEYCHAIN METHODS*/////////////////

-(void)insertIntoKeyChain{
    NSString *key =@"YOUR_KEY";
    NSData * value = [@"YOUR_DATA" dataUsingEncoding:NSUTF8StringEncoding];
    
    if([keychain insert:key :value])
    {
        NSLog(@"Successfully added data");
    }
    else
        NSLog(@"Failed to  add data");
}
-(void)updateKeyChain{
    NSString *key =@"YOUR_KEY";
    NSData * value = [@"NEW_VALUE" dataUsingEncoding:NSUTF8StringEncoding];
    
    if([keychain update:key :value])
    {
        NSLog(@"Successfully updated data");
    }
    else
        NSLog(@"Failed to  add data");
}
-(void)removeFromKeyChain{
    NSString *key =@"YOUR_KEY";
    if([keychain remove:key])
    {
        NSLog(@"Successfully removed data");
    }
    else
    {
        NSLog(@"Unable to remove data");
    }
}
-(void)findFromKeychain{
    NSString *key= @"YOUR_KEY";
    NSData * data =[keychain find:key];
    if(data == nil)
    {
        NSLog(@"Keychain data not found");
    }
    else
    {
        NSLog(@"Data is =%@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
    }
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
