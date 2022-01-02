# ip-notifier (WIP)
The intended usecase is for a user to be able to know their external ip so that they have access to their server/machine from anywhere via SSH.

### Running the program
Once you have cloned the repository you need to run the install script by running `bash install.sh` once that is done running you can either: start the program from the install script or, start it with `bash main.sh` if any [issues](https://github.com/Squibid/ip-notifier/issues) occour please report them.

<details open><summary> Planned Features </summary>
  
```
 - Sending ip log to a website with password protection
 - Clientside script to recieve the ip log from password protected website
 - A way to configure which DNS server is used to get the external ip address
```
</details>


## Configuring The Script
Easy configuration can be done in [`config.txt`](https://github.com/Squibid/ip-notifier/blob/ec48883567ee190247fa0e8838e4754c10455481/config.txt) and will be listed below in the same order as in the config file
* Number value that defines time between ip checks
