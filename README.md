# DriftPHP Docker images

This packages provide you a set of DriftPHP base images, using all the possible
dependencies for each ReactPHP EvenLoop implementations. All images will provide
the same PHP dependencies and will only change the Loop instance created with
the factory call.

You can check all available loop implementations in 
[EventLoop documentation](https://github.com/reactphp/event-loop#loop-implementations).

> There are some implementations that require PHP5, and because Drift requires
> a minimum PHP version of 7.3, these implementations have been excluded.

> The extension `ext-uv` with the latest PHP version under Alipne image throws
> a segmentation fault. As soon we can solve this we will update and push this
> adapter. Meanwhile, this adapter is not pushed.

- StreamSelectLoop - *driftphp/base*
- ExtEventLoop - *driftphp/ext-event*
- ExtEvLoop - *driftphp/ext-ev*

## Using

You can use these images by extending them in your Dockerfile. In these images
you'll find

- +PHP7.3 with required extensions
- Specific loop PHP and libraries already installed
- Composer installed globally

```
FROM driftphp/base
WORKDIR /var/www
...
```

> Be sure to change the *FROM* value from your Dockerfile, depending on the
> implementation you want.
