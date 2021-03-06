# Fingerprint website server OSes
Script that checks server's operating systems based on specified list of websites. Uses docker to run wappalyzer. Basically, it's two small bash wrapper scripts around docker wappalyzer container.

# Dependencies
* Linux
* Bash
* Docker

# How to run
1) `git clone https://github.com/sxiii/top-websites-os`
2) `cd top-websites-os` and replace or add your website link to the top of the file `scan-top.sh` (add into ntweb array)
3) Run `./scan-top.sh`. This step requires internet and root (if your docker requires root) and will generate JSONs based on Wappalyzer runned inside docker. Finally, it'll put them into json folder.
4) Run `./process-top.sh`. You will see which websites uses which OSes.

# Clean-up
To clean everything except the scripts; just remove the contents of json folder: `rm -rf ./json/*`.

# This code is in development
* Found a bug? File an issue!
* Want an improvement? File an issue!
* Can help? Publish pull requests with your improvements!
* Future releases might contain something more powerful, who knows.
* Current version includes list of top-30 Norwegian websites as demo for scan.

# Features wanted
* Getting visitors count automatically and for free for exact same websites (e.g., results parsed from similarweb)
* Maybe using other fingerprinting methods as additional or basic method (from Kali toolkit?...)
