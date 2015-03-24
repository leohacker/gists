//
//  LoggingMacro.h
//  BasicConcept
//
//  Created by Leo Jiang on 3/24/15.
//  Copyright (c) 2015 Leohacker Studio. All rights reserved.
//

#ifndef BasicConcept_LoggingMacro_h
#define BasicConcept_LoggingMacro_h


#ifdef DEBUG
#define NavLog(fmt, ...) NSLog((@"%@ %s" fmt), \
    [[[NSString stringWithCString:__FILE__ encoding:NSUTF8StringEncoding] componentsSeparatedByString:@"/"] lastObject], \
    __PRETTY_FUNCTION__, \
    ##__VA_ARGS__);
#else
#define NavLog(fmt, ...) // disable the custom log in debug mode.
#endif

#endif
