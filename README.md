# ip-notifier
The intended usecase is for a user to be able to know their external ip so that they have access to their server/machine from anywhere.

### Running the program
Once you have cloned the repository you need to run the install script by running `bash install.sh` once that is done running you can either: start the program from the install script or, start it with `bash main.sh` if any [issues](https://github.com/Squibid/ip-notifier/issues) occour please report them.

### Features

- Tracking how your external ip changes
- [Uploading](https://github.com/Squibid/ip-notifier/blob/46b83bb898a6ba0644ba5db313415506d1bfe926/functions/ftp.sh) your log file via FTP **(broken fix coming soon™)**
- [Downloading](https://github.com/Squibid/ip-notifer-client) file via FTP **(broken fix coming soon™)**

 <details open><summary> Planned Features </summary>
  
  ```
  ability to configure what method(s) are used for uploading
  send ip via email
  add option to track mac address
  ```
  
</details>


## Configuring The Script
Easy configuration can be done within the [`CONFIG`](https://github.com/Squibid/ip-notifier/blob/b6b819a027eb06b1387ed2e109c8452997207b9e/CONFIG) file and will be listed below in the same order as in the config file
* Defines the time between checking your ip
* Defines where your ip address is logged to
* Defines the ftp host
* Defines the ftp user
* Defines the ftp password
