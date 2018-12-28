//
//  main.m
//  largest
//
//  Created by Yilei Huang on 2018-12-27.
//  Copyright © 2018 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
NSNumber * large(NSArray * unsort);
int main(int argc, const char * argv[]) {

    
    @autoreleasepool {
        //NSString * large;
        NSArray * sort = @[@2, @44, @11,@55];
        NSNumber*l = large(sort);
        NSLog(@"Hello, World! %@",l);
    }
    
    return 0;
}
NSNumber* large(NSArray * unsort){
    NSNumber*l = [unsort objectAtIndex:0];
    for(int i =1;i<4; i++){
        
        l=([[unsort objectAtIndex:i]integerValue] > [l integerValue] ?[unsort objectAtIndex:i]:l);
    }
    return l;
}
