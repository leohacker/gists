 cell.textLabel.text = [daysWeather weatherDescription];

    NSURL *url = [NSURL URLWithString:daysWeather.weatherIconURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    UIImage *placeholderImage = [UIImage imageNamed:@"placeholder"];

    __weak UITableViewCell *weakCell = cell;

    [cell.imageView setImageWithURLRequest:request
                          placeholderImage:placeholderImage
                                   success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image) {

                                       weakCell.imageView.image = image;
                                       [weakCell setNeedsLayout];

                                   } failure:nil];
