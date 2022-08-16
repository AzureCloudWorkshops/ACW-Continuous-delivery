# New Scenario

Now that we have application insights we are getting more in depth insights into our applications. We are seeing much higher usage on our weather application than we thought. That data is allowing us to see trends on when our application crashes. However, building a weather application for internal customers we are seeing massive spikes outside of normal business hours. That is leading the project leads to believe someone outside of our normal users are purposely breaking our system, because we are seeing traffic drop as soon as exceptions start flying. The team also tells you they are planning to package and sell our weather API to other companies. They are setting maximums per third party companies and would like metric on how much each partner is using.

So to summarize all of the acceptance criteria they are

1. Lock API down to only authorized users
1. Set maximum usage per company
