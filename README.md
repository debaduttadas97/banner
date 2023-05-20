**Description: -**

	We have often observed that package for banner command is not preinstalled in some Linux distributions and when we try to 	download the package from yum repository but we face problem there too.
	When we try search in google then it suggests configuring one or more repositories

	Here is the quick solution to make banner work for you.

**Problem: -**

	[test@linux-vm01 ~]$ which banner
	
	/usr/bin/which: no banner in 	(/home/opc/.local/bin:/home/opc/bin:/usr/share/Modules/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin)

	[test@linux-vm01 ~]$ sudo yum install sysvbanner
	
	Last metadata expiration check: 0:23:00 ago on Sat 20 May 2023 07:41:24 AM GMT.
	
	No match for argument: sysvbanner
	
	Error: Unable to find a match: sysvbanner
	
	[test@linux-vm01 ~]$



**Solution: -**
	
  	Review the code from below link.
		
    		https://github.com/debaduttadas97/banner/blob/main/brand.sh
	Download code from below link.

    		https://github.com/debaduttadas97/banner/archive/refs/heads/main.zip

	Copy zip file to your Linux Server and then unzip.
	Then execute below commands.

	[test@linux-vm01 ~]$ which banner
	
	/usr/bin/which: no banner in 	(/home/test/.local/bin:/home/test/bin:/usr/share/Modules/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin)
	
	[test@linux-vm01 ~]$ cd banner-main/
	
	[test@linux-vm01 banner-main]$ source brand.sh 
	
	[test@linux-vm01 banner-main]$ banner Hello
	
	
	H   H EEEEE L     L      OOO  
	H   H E     L     L     O   O 
	HHHHH EEE   L     L     O   O 
	H   H E     L     L     O   O 
	H   H EEEEE LLLLL LLLLL  OOO  


	[test@linux-vm01 banner-main]$ 

