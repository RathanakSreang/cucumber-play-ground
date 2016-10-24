# Cucumber Play Ground(Having fun with cucumber)

The code in this branch will help you to build a good connection with your friends on social network.

### How to run it?
- change email, password, and message you want to display in `config/config.yml` to your.
- run `cucumber -t @social-building`
or
- install `xvfb` `apt-get install xvfb`
- run `xvfb-run cucumber -t @social-building`

- update cronjob via whenever command `whenever --update-crontab`
- check your cron job `crontab -l`

Done. :)