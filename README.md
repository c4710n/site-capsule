# site-capsule

> Scripts based on [wget](https://www.gnu.org/software/wget/) for capturing sites.

## Explainations of wget options

```
# Act like a genty, polite user
--user-agent                   # Act as you are using a web browser. Copy this value is
                               # the console of your web browser with `window.navigator.userAgent`.
--execute robots=off           # Ignore "robots.txt" files and "nofollow" links.
--limit-rate=200k              # Don't download too aggressively, as it may cause trouble for the website owner.
--wait 1 --random-wait         # Slow down! Don't act as a machine that only works.

# Go
--recursive --level inf        # Download the whole site.
--page-requisites              # Download all assets/elements (CSS/JS/images).
--span-hosts                   # Include necessary assets from offsite as well.
--convert-links                # Update links to still work in the static version.
--adjust-extension             # Save files with .html on the end.
--restrict-file-names=windows  # Modify filenames to work in Windows as well.
--no-parent                    # Don't follow links outside the directory you pass in.
--domains a.com,b.com          # Do not follow links outside this domain.
```

Notes:

- The address of site should contain trailing slash. Otherwise, it will not work with `--no-parent`.
- If the site requires authorization, specify your cookie with `--header='Cookie: KEY=VALUE; KEY=VALUE'`.

## References

- https://gist.github.com/stvhwrd/985dedbe1d3329e68d70
- https://gist.github.com/crittermike/fe02c59fed1aeebd0a9697cf7e9f5c0c
