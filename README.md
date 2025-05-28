# SCoRontab

Used to run cronjobs when there is no crontab. Will submit a copy of itself to SLURM with a delayed start time and then continue running any code in the file.

## Init

Run one of the files to get the ball rolling,

```bash
bash dahlo.10m.sh
```

which will run the entire script (or you can ctrl+c after it has submitted a copy of itself). The queued job will start once the delayed time has passed, running the script again and resubmitting itself. 


