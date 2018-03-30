for i in $(find . | grep *.gz); do gunzip $i; done
