//
//  VROKeyChain.h
//  VRO
//
//  Created by RAHUL'S MAC MINI on 09/09/15.
//  Copyright (c) 2015 Naga Info. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VROKeyChain : NSObject{
    NSString * service;
    NSString * group;
}
-(id) initWithService:(NSString *) service_ withGroup:(NSString*)group_;

-(BOOL) insert:(NSString *)key : (NSData *)data;
-(BOOL) update:(NSString*)key :(NSData*) data;
-(BOOL) remove: (NSString*)key;
-(NSData*) find:(NSString*)key;

@end
