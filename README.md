# ip-notifier-client
The intended usecase is for a user to be able to know their external ip so that they have access to their server/machine from anywhere. This is the client side of the script which can be used to recieve the data (currently only made for ftp other methods coming soon™).

### Running the program
 **1.** clone the repo and enter the folder `git clone -b client https://github.com/squibid/ip-notifier.git && cd ip-notifier` 

 **2.** Then run one of the following programs 

| Tested | Working | Language | Start command |
| :-: | :-: | :-- | :-- |
| <li> [x] </li> | <li> [ ] </li> | <img src="https://img.shields.io/badge/Bash-3D4648?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Bash" /> | [`bash ftp.sh`](https://github.com/Squibid/ip-notifer-client/blob/2a9958b587cb63251c4c8137f323ff965429a9de/ftp.sh) |
| <li> [x] </li> | <li> [ ] </li> | <img src="https://img.shields.io/badge/Python-37709f?style=for-the-badge&logo=python&logoColor=white" alt="Python" /> | [`python ftp.py`](https://github.com/Squibid/ip-notifier-client/blob/c44eb74362a986eb2fd24009c199e5d735686fe8/ftp.py) |
| <li> [ ] </li> | <li> [ ] </li> | <img src="https://img.shields.io/badge/Rust-cb3837?style=for-the-badge&logo=rust&logoColor=white" alt="Rust" /> | [`rustc ftp.rs`](https://github.com/Squibid/ip-notifer-client/blob/2a9958b587cb63251c4c8137f323ff965429a9de/ftp.rs) |


### Features

- Tracking how your external ip changes
- [Uploading](https://github.com/Squibid/ip-notifier/blob/46b83bb898a6ba0644ba5db313415506d1bfe926/functions/ftp.sh) your log file via FTP
- [Downloading](https://github.com/Squibid/ip-notifier/tree/client) file via FTP

 <details open><summary> Planned Features </summary>
  
  ```
  
  ```
  
</details>


## Configuring The Script
There are variables at the top of all programs which should be self explanitory 
