# WebP
## _Project to compress images in the WebP standard with Docker._

Project to compress images in the WebP standard with Docker.
Compress images to the WebP standard very easily.
Look at the example:

```sh
$ docker run --rm -it -v `pwd`/images:/usr/local/img fuerzastudio/webp
```
You can set up a cron to run periodically.
Running every 12 hours.
```bash
$ crontab -e
```
```crontab
0 */12 * * * docker run --rm -it -v `pwd`/images:/usr/local/img fuerzastudio/webp >/dev/null 2>&
```