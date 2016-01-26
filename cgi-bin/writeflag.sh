#!/bin/bash

touch $DEPLOY_FLAG

echo `pwd`
echo "Content-type: text/html";
echo ""
echo "<html><body>"
echo "$DEPLOY_FLAG created <br/>"
echo "</body></html>";

exit 0