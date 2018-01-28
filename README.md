# CentOS 7 image for Korean-enabled
---
CentOS 7 Default docker image is not enabled korean, so many people are getting hard to use korean :D 
 
This repository is for korean-enabled CentOS 7 Docker image. 
 
Setting Steps
----

1. Change /etc/yum.conf file : comment EN_US line. In this image, substitute yum.conf will be placed in a container.
2. Set LANG env to /etc/profile and apply by executing "source"
3. Set LANG env in /etc/locale.conf
4. Re-install glibc-common package referring setting changed in step 1. 

Other lines in Dockerfile maybe not necessary, but feel free to change contents if needed!

How to build image
---
<pre><code>build . -t alicek106/centos:7-korean</code></pre>

Is it easy?

