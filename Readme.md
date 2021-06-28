# MFC Public Gists 
Gists that are to be published so that they can be used with a simple `curl -sL <script url> | bash -` are centralized in this repo 

## Add/Update a Gist:
1) Adapt the Gist file structure so it can have a clean url
Gists to publish must have a file structure along [docker example](https://gist.github.com/rachidbch/9ef6187b57b3e4c415f571d0e2991ae0):<br>
 + Name of the gist :             rachidbch/docker # Name of the scripts should be a theme (here Docker)
 + Gist Description:              Docker scripts
 + `#docker` file:                A silly/dummy file which only use is to give Gist a clean name (*)
 + `install.sh` file:             One or several scripts with a easy to remember name and meaningful extension.
 (*) Using `#` is a hack as Gist name is given by the file that appears first in alphabetic order
2) Clone this repo and add the new Gist as a submodule
  $ git submodule add GIST_URL CLEAN_GIST_NAME  # The clean gist name will be the name of the link to the new submodule


## Update the scripts website 
1) Enter `cloud.lxd` VPS 
2) In `/Portainer/Gists/html`, update the repo
   $ ./update.sh 

## Use the script
   $ curl -sL scripts.domain.tld/path/to/script | bash -
