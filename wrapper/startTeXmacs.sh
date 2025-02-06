#!/bin/sh

if [ "$(ls -A /app/texlive)" ]; then
  architecture_type=$(uname -m)
  perl_version=$(ls /app/texlive/lib/perl5/site_perl/)
  
  if ! [[ $perl_version =~ ^[0-9.]+$ ]]; then
    echo " startTeXmacs.sh: Possible error in environment variables."
    echo " "
  fi
  
  export PATH=/app/texlive/bin/${architecture_type}-linux:${PATH}
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/app/texlive/lib/perl5/${perl_version}/${architecture_type}-linux/CORE
  export PERL5LIB=/app/texlive/lib/perl5/${perl_version}:/app/texlive/lib/perl5/site_perl/${perl_version}
fi

export ASPELL_CONF='dict-dir /app/share/dicts'

# Archivo de configuracion
config_file="flat-config.conf"
path_config_file="~/.TeXmacs"
IDN="0"
if [[ -f "${path_config_file}/${config_file}" ]]; then

    source "${path_config_file}/${config_file}"

    if [[ "$ID" == "$IDN" ]]; then
      exec texmacs "$@"
    else
      echo "id=$IDN" > "${path_config_file}/${config_file}"
      exec texmacs /app/share/texmacs-flatpak/firts_run.tm
    fi
else

   echo "id=$IDN" > "${path_config_file}/${config_file}"
   exec texmacs /app/share/texmacs-flatpak/firts_run.tm
fi

