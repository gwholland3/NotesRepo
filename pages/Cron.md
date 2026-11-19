- [Cron](https://en.wikipedia.org/wiki/Cron) is a service for running scheduled jobs on an OS.
- Jobs are defined in a "crontab" (cron table) file. Here's what an example crontab file might look like:
  ```
  # Run a health-check script every 5 minutes and discard output
  */5 * * * * /home/user/scripts/health_check.sh >/dev/null 2>&1
  
  # Run a database backup every day at 2:30 AM and log the output
  30 2 * * * /home/user/scripts/backup_db.sh >> /var/log/db_backup.log 2>&1
  ```
- # Useful Commands
	- `crontab -l` - display the current crontab.