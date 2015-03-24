#ifdef DEBUG
#define NLog(fmt, ...) NSLog((@"%@ %s" fmt), \
            [[[NSString stringWithCString:__FILE__ encoding:NSUTF8StringEncoding] componentsSeparatedByString:@"/"] lastObject], \
            __PRETTY_FUNCTION__, \
            ##__VA_ARGS__);
#else
#define NLog(fmt, ...) // disable the custom log in debug mode.
#endif
