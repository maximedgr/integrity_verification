# Verify checksum of a file
This project allows you to generate md5 hash of a file and compare it.

# Configuration 
Clone this repo :
```
git clone <repo_url>
```

Enable script execution :
```
chmod u+x verify_file.sh
chmod u+x generate_hash.sh
```

# Example

1. Generate hash
Imagine that you have a "latest_script_version.txt" file and you want to generate its hash before deploying or sharing it.

```
./generate_hash.sh 
```
Copy and save the returned hash.

2. Compare hashes
Know imagine that you recover from a third party (colleague, drive...) your theoretically unchanged file. Before going any further, you can check that indeed nothing has been changed by using the second script: compare a file and a given hash.

```
./verify_file.sh 
```