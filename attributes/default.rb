default['supervisor']['command_start']							=	'supervisord -c /etc/supervisord.conf'
default['supervisor']['command_update']							=	'supervisorctl update'

##### DYNAMIC PARAMNS
# default['supervisor']['programs']['PROGRAM_NAME']['PARAMS'] = VAL

##### PROGRAM NAME
#[program:PROGRAM_NAME]

##### PARAMS
#key=val

#command=/bin/cat              # the program (relative uses PATH, can take args)
#process_name=%(program_name)s # process_name expr (default %(program_name)s)
#numprocs=1                    # number of processes copies to start (def 1)
#directory=/tmp                # directory to cwd to before exec (def no cwd)
#umask=022                     # umask for process (default None)
#priority=999                  # the relative start priority (default 999)
#autostart=true                # start at supervisord start (default: true)
#autorestart=unexpected        # whether/when to restart (default: unexpected)
#startsecs=1                   # number of secs prog must stay running (def. 1)
#startretries=3                # max # of serial start failures (default 3)
#exitcodes=0,2                 # 'expected' exit codes for process (default 0,2)
#stopsignal=QUIT               # signal used to kill process (default TERM)
#stopwaitsecs=10               # max num secs to wait b4 SIGKILL (default 10)
#stopasgroup=false             # send stop signal to the UNIX process group (default false)
#killasgroup=false             # SIGKILL the UNIX process group (def false)
#user=chrism                   # setuid to this UNIX account to run the program
#redirect_stderr=true          # redirect proc stderr to stdout (default false)
#stdout_logfile=/a/path        # stdout log path, NONE for none# default AUTO
#stdout_logfile_maxbytes=1MB   # max # logfile bytes b4 rotation (default 50MB)
#stdout_logfile_backups=10     # # of stdout logfile backups (default 10)
#stdout_capture_maxbytes=1MB   # number of bytes in 'capturemode' (default 0)
#stdout_events_enabled=false   # emit events on stdout writes (default false)
#stderr_logfile=/a/path        # stderr log path, NONE for none# default AUTO
#stderr_logfile_maxbytes=1MB   # max # logfile bytes b4 rotation (default 50MB)
#stderr_logfile_backups=10     # # of stderr logfile backups (default 10)
#stderr_capture_maxbytes=1MB   # number of bytes in 'capturemode' (default 0)
#stderr_events_enabled=false   # emit events on stderr writes (default false)
#environment=A="1",B="2"       # process environment additions (def no adds)
#serverurl=AUTO                # override serverurl computation (childutils)