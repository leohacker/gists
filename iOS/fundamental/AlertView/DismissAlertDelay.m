// Login failed—inform the user
__block UIAlertView *alert =
[[UIAlertView alloc]
 initWithTitle:@"Login Failed"
 message:@"Either your email or password is incorrect. Please try again."
 delegate:nil
 cancelButtonTitle:nil
 otherButtonTitles:nil];
[alert show];

// Hide the alert
double delayInSeconds = 3;
dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
    [alert dismissWithClickedButtonIndex:0 animated:YES];
});