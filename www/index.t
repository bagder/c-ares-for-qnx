#include "doctype.t"
#include "setup.t"

HEAD(Open Source for QNX: c-ares and curl)
#include "body.t"
#include "menu.t"

#include "files.gen"

<div class="contents">

TITLE(Open Source for QNX)
<p>
SUBTITLE(c-ares for QNX)
<p>

#ifdef QNX_SDK70_DATE
# define QNX_CARESDATE QNX_SDK70_DATE
#else
# ifdef QNX_SDK71_DATE
#  define QNX_CARESDATE QNX_SDK71_DATE
# else
#  define QNX_CARESDATE QNX_SDK80_DATE
# endif
#endif

<!-- version: QNX_CARESVER -->

<table>
<tr><td> <b>c-ares home</b> </td><td> <a href="https://c-ares.org">c-ares.org</a></td></tr>
<tr><td> <b>QNX port</b> </td> <td><a href="https://github.com/qnx-ports/c-ares">github.com/qnx-ports/c-ares</a></td></tr>
<tr><td> <b>c-ares version</b> </td><td> QNX_CARESVER </td></tr>
<tr><td> <b>Build</b> </td><td> QNX_CARESVER_PACKAGE </td></tr>
<tr><td> <b>Date</b> </td><td> QNX_CARESDATE </td></tr>
<tr><td> <b>Changes</b> </td><td> <a href="https://c-ares.org/changelog.html">changelog</a> </td></tr>
</table>

#ifdef QNX_SDK80_FILENAME
<p class="qnxdl">
  <a href="QNX_SDK80_FILENAME"><img src="dl.svg" alt="c-ares for QNX SDP 8.0" width="90" height="120" style="float:left;"></a>
  <a href="QNX_SDK80_FILENAME" class="qnxdl">c-ares QNX_CARESVER for QNX SDP 8.0</a> <br>
#ifdef QNX_SDK80_SIG
<b>GPG signature</b>: <a href="QNX_SDK80_SIG">here</a><br>
#endif
<b>Size</b>: QNX_SDK80_SIZE<br>
<b>sha256</b>: QNX_SDK80_SHA256
#endif

#ifdef QNX_SDK71_FILENAME
<p class="qnxdl">
  <a href="QNX_SDK71_FILENAME"><img src="dl.svg" alt="c-ares for QNX SDP 7.1" width="90" height="120" style="float:left;"></a>
  <a href="QNX_SDK71_FILENAME" class="qnxdl">c-ares QNX_CARESVER for QNX SDP 7.1</a> <br>
#ifdef QNX_SDK71_SIG
<b>GPG signature</b>: <a href="QNX_SDK71_SIG">here</a><br>
#endif
<b>Size</b>: QNX_SDK71_SIZE<br>
<b>sha256</b>: QNX_SDK71_SHA256
#endif

#ifdef QNX_SDK70_FILENAME
<p class="qnxdl">
  <a href="QNX_SDK70_FILENAME"><img src="dl.svg" alt="c-ares for QNX SDP 7.0" width="90" height="120" style="float:left;"></a>
<div>
  <a href="QNX_SDK70_FILENAME" class="qnxdl">c-ares QNX_CARESVER for QNX SDP 7.0</a>
<br>
#ifdef QNX_SDK70_SIG
<b>GPG signature</b>: <a href="QNX_SDK70_SIG">here</a><br>
#endif
<b>Size</b>: QNX_SDK70_SIZE<br>
<b>sha256</b>: QNX_SDK70_SHA256
</div>
#endif

<p> Build scripts and setup: <a
 href="https://github.com/bagder/c-ares-for-qnx">c-ares-for-QNX</a>

TITLE(curl for QNX)
<p>
  <a href="https://curl.se/qnx/">curl for QNX</a>
 
</div>
#include "footer.t"
