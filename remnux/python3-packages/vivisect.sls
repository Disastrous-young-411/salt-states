# Name: Vivisect
# Website: https://github.com/vivisect/vivisect
# Description: Statically examine and emulate binary files.
# Category: Statically Analyze Code: General
# Author: invisigoth: invisigoth@kenshoto.com, installable vivisect module by Willi Ballenthin: https://twitter.com/williballenthin
# License: Apache License 2.0: https://github.com/vivisect/vivisect/blob/master/LICENSE.txt
# Notes: Vivisect is presently only installed when REMnux is running on Ubuntu 18.04, because some of its dependencies aren't available on Ubuntu 20.04. If the tool is installed, you can inoke it using commands `vivbin` and `vdbbin`.

include:
  - remnux.packages.python2-pip
  - remnux.python3-packages.pip

remnux-python3-packages-vivisect:
  pip.installed:
    - bin_env: /usr/bin/python3
    - name: vivisect
    - require:
      - sls: remnux.python3-packages.pip

remnux-python3-packages-vivisect-cleanup:
  pip.removed:
    - bin_env: /usr/bin/python2
    - name: vivisect
    - require:
      - sls: remnux.packages.python2-pip