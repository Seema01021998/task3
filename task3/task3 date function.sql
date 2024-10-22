select eventid,eventname,eventdate from event where eventdate>now() - INTERVAL
'30 days'