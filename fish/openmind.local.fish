# ORACLE client
#setenv ORACLE_HOME /usr/local/instantclient_32bit
setenv NLS_LANG GERMAN_GERMANY.AL32UTF8
setenv ORACLE_HOME /opt/instantclient_11_2
setenv ORACLE_BASE $ORACLE_HOME
setenv MONGO_HOME /usr/local/mongodb
setenv MYSQL_HOME /usr/local/mysql
setenv DYLD_LIBRARY_PATH $ORACLE_HOME $DYLD_LIBRARY_PATH  $MYSQL_HOME/lib
setenv TNS_ADMIN $ORACLE_HOME/network/admin
setenv RUBY_HOME /usr/local/ruby
setenv RUBY_GEM_PATH /usr/local/Cellar/ruby/1.9.3-p194
setenv GROOVY_HOME /usr/local/groovy
setenv GRAILS_HOME /usr/local/grails
setenv GRADLE_HOME /usr/local/gradle 
setenv NEO4J_HOME /usr/local/neo4j


setenv PATH /Applications/Postgres93.app/Contents/MacOS/bin $PATH
setenv PATH $MYSQL_HOME/bin $PATH
#setenv PATH $RUBY_HOME/bin $PATH
setenv PATH $ORACLE_HOME $PATH 
setenv PATH $MONGO_HOME/bin $PATH 
setenv PATH $GROOVY_HOME/bin $PATH 
setenv PATH $GRAILS_HOME/bin $PATH 
setenv PATH $GRADLE_HOME/bin $PATH 
setenv PATH $NEO4J_HOME/bin $PATH 
setenv PATH $HOME/bin $PATH

setenv PATH $HOME/.rbenv/bin $PATH
setenv PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

setenv LC_ALL="de_DE.UTF-8"


for filename in "mysql_development.fish" "umt.fish" "ad_uk_halle.fish" "mysql_urz.fish" "mysql_itz_root.fish" "ldap4_urz.fish" "ldap.fish" "postgresql_zuv.fish" "postgresql_isw.fish" "ldap1_itz.fish"
  set password_file "$HOME/.password/$filename"
  if test -e $password_file
    . $password_file
  else
    echo "Kann $password_file nicht laden, denn Datei existiert nicht"
  end 
end
