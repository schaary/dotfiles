
. /etc/profile.d/oracle.fish 

setenv ZEND_HOME /usr/local/zend
setenv LD_LIBRARY_PATH /usr/local/zend/lib $ORACLE_HOME $LD_LIBRARY_PATH
setenv ANT_HOME /opt/ant
setenv GROOVY_HOME /opt/groovy
setenv GRADLE_HOME /opt/gradle
setenv GROOVYSERV_HOME /opt/groovyserv

setenv PATH $HOME/bin $PATH 
#setenv PTAH $ORACLE_HOME/bin $PATH
setenv PATH $ZEND_HOME/bin $PATH
setenv PATH $ANT_HOME/bin $PATH 
setenv PATH $GROOVY_HOME/bin $PATH 
setenv PATH $GRADLE_HOME/bin $PATH 
setenv PATH $GROOVYSERV_HOME/bin $PATH

# umt_env
setenv PATH $HOME/.rbenv/bin $PATH
setenv PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

. $HOME/.password/ldap.fish
. $HOME/.password/umt.fish
. $HOME/.password/ad_uk_halle.fish

