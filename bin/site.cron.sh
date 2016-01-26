#!/bin/bash

# site deployment

DEPLOY_FLAG="./deploy/deploy.site.flag"

if [ -e "$DEPLOY_FLAG" ];
then 
    echo " -------------------------- ";
    echo "  * updating";
    echo " --------------------------";
    rm ./site/*.html
    git pull origin master;
    make build;
else 
    echo " $DEPLOY_FLAG does not exist.\n !!! Aborting. ";
    exit 2;
fi


# sitemap
echo " * Writing sitemap.txt"
cd site && ls *.html | sed  s/^/http:\\/\\/bou.zone\\// > sitemap.txt


echo " * Delete $DEPLOY_FLAG"
cd .. && rm -f $DEPLOY_FLAG