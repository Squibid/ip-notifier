# ip-notifier (WIP)

The intended usecase is for a user to be able to know their external ip so that they have access to their server/machine from anywhere via SSH.

<details open><summary> Planned Features </summary>
  
```
 - Sending ip log to a website with password protection
 - Clientside script to recieve the ip log from password protected website
 - A way to configure which DNS server is used to get the external ip address
```
</details>


## Configuring The Script
Easy configuration can be done in [`config.txt`](https://github.com/Squibid/ip-notifier/blob/e0c16df78fd75bb69ad01fd40d86d6151e678d39/config.txt) and will be listed below in the same order as in the config file
* Number value that defines time between ip checks
