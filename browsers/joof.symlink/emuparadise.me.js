var lnk = document.querySelector('.download-link');
var id = ((document.URL).split("/"))[5];
var elm = document.createElement('div');
elm.innerHTML = '<a target="_blank" href="/roms/get-download.php?gid=' + id + '&test=true">Download</a><br><br>';
lnk.prepend(elm);