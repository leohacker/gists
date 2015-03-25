// find the main storyboard.
UIStoryboard *storyboard = [UIStoryboard storyboardWithName:
                            [[NSBundle mainBundle].infoDictionary objectForKey:@"UIMainStoryboardFile"]
                                                     bundle:[NSBundle mainBundle]];